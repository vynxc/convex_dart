use std::{
    collections::{
        BTreeMap,
        HashMap,
    },
    sync::Arc,
};

#[cfg(debug_assertions)]
use android_logger::Config;
use async_once_cell::OnceCell;
use convex::{
    ConvexClient,
    ConvexClientBuilder,
    FunctionResult,
    Value,
};
use futures::{
    channel::oneshot::{
        self,
        Sender,
    },
    pin_mut,
    select_biased,
    FutureExt,
    StreamExt,
};
use log::debug;
#[cfg(debug_assertions)]
use log::LevelFilter;
use parking_lot::Mutex;
use flutter_rust_bridge::{frb, DartFnFuture};

#[derive(Debug, thiserror::Error)]
#[frb]
pub enum ClientError {
    /// An error that occurs internally here in the mobile Convex client.
    #[error("InternalError: {msg}")]
    InternalError { msg: String },
    /// An application specific error that is thrown in a remote Convex backend
    /// function.
    #[error("ConvexError: {data}")]
    ConvexError { data: String },
    /// An unexpected server error that is thrown in a remote Convex backend
    /// function.
    #[error("ServerError: {msg}")]
    ServerError { msg: String },
}

impl From<anyhow::Error> for ClientError {
    fn from(value: anyhow::Error) -> Self {
        Self::InternalError {
            msg: value.to_string(),
        }
    }
}

/// Trait for subscription updates; not exposed to Dart directly.
pub trait QuerySubscriber: Send + Sync {
    fn on_update(&self, value: String);
    fn on_error(&self, message: String, value: Option<String>);
}

/// Struct to adapt Dart callbacks to the QuerySubscriber trait.
pub struct CallbackSubscriber {
    on_update: Box<dyn Fn(String) + Send + Sync>,
    on_error: Box<dyn Fn(String, Option<String>) + Send + Sync>,
}

impl QuerySubscriber for CallbackSubscriber {
    fn on_update(&self, value: String) {
        (self.on_update)(value);
    }

    fn on_error(&self, message: String, value: Option<String>) {
        (self.on_error)(message, value);
    }
}

#[frb(opaque)]
pub struct SubscriptionHandle {
    cancel_sender: Mutex<Option<Sender<()>>>,
}

impl SubscriptionHandle {
    fn new(cancel_sender: Sender<()>) -> Self {
        SubscriptionHandle {
            cancel_sender: Mutex::new(Some(cancel_sender)),
        }
    }

    #[frb]
    pub fn cancel(&self) {
        if let Some(sender) = self.cancel_sender.lock().take() {
            sender.send(()).unwrap();
        }
    }
}

pub struct CallbackSubscriberDartFn {
    on_update: Box<dyn Fn(String) -> DartFnFuture<()> + Send + Sync>,
    on_error: Box<dyn Fn(String, Option<String>) -> DartFnFuture<()> + Send + Sync>,
}

impl QuerySubscriber for CallbackSubscriberDartFn {
    fn on_update(&self, value: String) {
        // Since on_update returns a Future, we need to spawn it
        let future = (self.on_update)(value);
        tokio::spawn(async move {
            let _ = future.await; // We don't need the result, but we need to await it
        });
    }

    fn on_error(&self, message: String, value: Option<String>) {
        let future = (self.on_error)(message, value);
        tokio::spawn(async move {
            let _ = future.await;
        });
    }
}

#[frb(opaque)]
pub struct MobileConvexClient {
    deployment_url: String,
    client_id: String,
    client: OnceCell<ConvexClient>,
    rt: tokio::runtime::Runtime,
}

impl MobileConvexClient {
    #[frb]
    pub fn new(deployment_url: String, client_id: String) -> MobileConvexClient {
        #[cfg(debug_assertions)]
        android_logger::init_once(Config::default().with_max_level(LevelFilter::Trace));
        let rt = tokio::runtime::Builder::new_multi_thread()
            .enable_all()
            .build()
            .unwrap();
        MobileConvexClient {
            deployment_url,
            client_id,
            client: OnceCell::new(),
            rt,
        }
    }

    async fn connected_client(&self) -> anyhow::Result<ConvexClient> {
        let url = self.deployment_url.clone();
        self.client
            .get_or_try_init(async {
                let client_id = self.client_id.to_owned();
                self.rt
                    .spawn(async move {
                        ConvexClientBuilder::new(url.as_str())
                            .with_client_id(&client_id)
                            .build()
                            .await
                    })
                    .await?
            })
            .await
            .map(|client_ref| client_ref.clone())
    }

    #[frb]
    pub async fn query(
        &self,
        name: String,
        args: HashMap<String, String>,
    ) -> Result<String, ClientError> {
        let mut client = self.connected_client().await?;
        debug!("got the client");
        let result = client.query(name.as_str(), parse_json_args(args)).await?;
        debug!("got the result");
        handle_direct_function_result(result)
    }

    #[frb]
    pub async fn subscribe(
        &self,
        name: String,
        args: HashMap<String, String>,
        on_update: impl Fn(String) -> DartFnFuture<()> + Send + Sync + 'static,
        on_error: impl Fn(String, Option<String>) -> DartFnFuture<()> + Send + Sync + 'static,
    ) -> Result<Arc<SubscriptionHandle>, ClientError> {
        let subscriber = Arc::new(CallbackSubscriberDartFn {
            on_update: Box::new(on_update),
            on_error: Box::new(on_error),
        });
        self.internal_subscribe(name, args, subscriber).await.map_err(Into::into)
    }

    async fn internal_subscribe(
        &self,
        name: String,
        args: HashMap<String, String>,
        subscriber: Arc<dyn QuerySubscriber>,
    ) -> anyhow::Result<Arc<SubscriptionHandle>> {
        let mut client = self.connected_client().await?;
        debug!("New subscription");
        let mut subscription = client
            .subscribe(name.as_str(), parse_json_args(args))
            .await?;
        let (cancel_sender, cancel_receiver) = oneshot::channel::<()>();
        self.rt.spawn(async move {
            let cancel_fut = cancel_receiver.fuse();
            pin_mut!(cancel_fut);
            loop {
                select_biased! {
                    new_val = subscription.next().fuse() => {
                        let new_val = new_val.expect("Client dropped prematurely");
                        match new_val {
                            FunctionResult::Value(value) => {
                                debug!("Updating with {value:?}");
                                subscriber.on_update(serde_json::to_string(
                                    &serde_json::Value::from(value)
                                ).unwrap());
                            },
                            FunctionResult::ErrorMessage(message) => {
                                subscriber.on_error(message, None);
                            },
                            FunctionResult::ConvexError(error) => subscriber.on_error(
                                error.message,
                                Some(serde_json::ser::to_string(
                                    &serde_json::Value::from(error.data)
                                ).unwrap())
                            )
                        }
                    },
                    _ = cancel_fut => {
                        break
                    },
                }
            }
            debug!("Subscription canceled");
        });
        Ok(Arc::new(SubscriptionHandle::new(cancel_sender)))
    }
    #[frb]
    pub async fn mutation(
        &self,
        name: String,
        args: HashMap<String, String>,
    ) -> Result<String, ClientError> {
        let result = self.internal_mutation(name, args).await?;
        handle_direct_function_result(result)
    }

    async fn internal_mutation(
        &self,
        name: String,
        args: HashMap<String, String>,
    ) -> anyhow::Result<FunctionResult> {
        let mut client = self.connected_client().await?;
        self.rt
            .spawn(async move { client.mutation(&name, parse_json_args(args)).await })
            .await?
    }

    #[frb]
    pub async fn action(
        &self,
        name: String,
        args: HashMap<String, String>,
    ) -> Result<String, ClientError> {
        debug!("Running action: {}", name);
        let result = self.internal_action(name, args).await?;
        debug!("Got action result: {:?}", result);
        handle_direct_function_result(result)
    }

    async fn internal_action(
        &self,
        name: String,
        args: HashMap<String, String>,
    ) -> anyhow::Result<FunctionResult> {
        let mut client = self.connected_client().await?;
        debug!("Running action: {}", name);
        self.rt
            .spawn(async move { client.action(&name, parse_json_args(args)).await })
            .await?
    }

    #[frb]
    pub async fn set_auth(&self, token: Option<String>) -> Result<(), ClientError> {
        Ok(self.internal_set_auth(token).await?)
    }

    async fn internal_set_auth(&self, token: Option<String>) -> anyhow::Result<()> {
        let mut client = self.connected_client().await?;
        self.rt
            .spawn(async move { client.set_auth(token).await })
            .await
            .map_err(|e| e.into())
    }
}

fn parse_json_args(raw_args: HashMap<String, String>) -> BTreeMap<String, Value> {
    raw_args
        .into_iter()
        .map(|(k, v)| {
            (
                k,
                Value::try_from(
                    serde_json::from_str::<serde_json::Value>(&v)
                        .expect("Invalid JSON data from FFI"),
                )
                .expect("Invalid Convex data from FFI"),
            )
        })
        .collect()
}

fn handle_direct_function_result(result: FunctionResult) -> Result<String, ClientError> {
    match result {
        FunctionResult::Value(v) => serde_json::to_string(&serde_json::Value::from(v))
            .map_err(|e| ClientError::InternalError { msg: e.to_string() }),
        FunctionResult::ConvexError(e) => Err(ClientError::ConvexError {
            data: serde_json::ser::to_string(&serde_json::Value::from(e.data)).unwrap(),
        }),
        FunctionResult::ErrorMessage(msg) => Err(ClientError::ServerError { msg }),
    }
}