import 'package:flutter/material.dart';
import 'package:convex_dart/src/rust/api/simple.dart';
import 'package:convex_dart/src/rust/frb_generated.dart';

late MobileConvexClient convexClient;
late ArcSubscriptionHandle subscriptionHandle;
Future<void> main() async {
  await RustLib.init();
  convexClient = await MobileConvexClient.newInstance(
    deploymentUrl: "https://terrific-otter-57.convex.cloud",
    clientId: "flutter-app-1.0"
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<String> updates = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Convex Flutter Demo')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () async {
                  subscriptionHandle = await convexClient.subscribe(
                    name: "hello:hellos",
                    args: {},
                    onUpdate: (value) {
                      setState(() {
                        updates.add(value);
                      });
                    },
                    onError: (message, value) {
                      print("Error: $message, Value: $value");
                    },
                  );
                },
                child: const Text('Subscribe to Updates'),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: updates.isEmpty
                    ? const Text('No updates yet. Click the button above to subscribe.')
                    : ListView.builder(
                        itemCount: updates.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(updates[index]),
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
