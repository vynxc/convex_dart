// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.8.0.

// ignore_for_file: unused_import, unused_element, unnecessary_import, duplicate_ignore, invalid_use_of_internal_member, annotate_overrides, non_constant_identifier_names, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables, unused_field

// Static analysis wrongly picks the IO variant, thus ignore this
// ignore_for_file: argument_type_not_assignable

import 'api/simple.dart';
import 'dart:async';
import 'dart:convert';
import 'frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated_web.dart';

abstract class RustLibApiImplPlatform extends BaseApiImpl<RustLibWire> {
  RustLibApiImplPlatform({
    required super.handler,
    required super.wire,
    required super.generalizedFrbRustBinding,
    required super.portManager,
  });

  CrossPlatformFinalizerArg
  get rust_arc_decrement_strong_count_ArcSubscriptionHandlePtr =>
      wire.rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcSubscriptionHandle;

  CrossPlatformFinalizerArg
  get rust_arc_decrement_strong_count_CallbackSubscriberPtr =>
      wire.rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCallbackSubscriber;

  CrossPlatformFinalizerArg
  get rust_arc_decrement_strong_count_CallbackSubscriberDartFnPtr =>
      wire.rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCallbackSubscriberDartFn;

  CrossPlatformFinalizerArg
  get rust_arc_decrement_strong_count_MobileConvexClientPtr =>
      wire.rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMobileConvexClient;

  CrossPlatformFinalizerArg
  get rust_arc_decrement_strong_count_SubscriptionHandlePtr =>
      wire.rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerSubscriptionHandle;

  @protected
  AnyhowException dco_decode_AnyhowException(dynamic raw);

  @protected
  ArcSubscriptionHandle
  dco_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcSubscriptionHandle(
    dynamic raw,
  );

  @protected
  CallbackSubscriber
  dco_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCallbackSubscriber(
    dynamic raw,
  );

  @protected
  CallbackSubscriberDartFn
  dco_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCallbackSubscriberDartFn(
    dynamic raw,
  );

  @protected
  MobileConvexClient
  dco_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMobileConvexClient(
    dynamic raw,
  );

  @protected
  SubscriptionHandle
  dco_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerSubscriptionHandle(
    dynamic raw,
  );

  @protected
  CallbackSubscriber
  dco_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCallbackSubscriber(
    dynamic raw,
  );

  @protected
  CallbackSubscriberDartFn
  dco_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCallbackSubscriberDartFn(
    dynamic raw,
  );

  @protected
  MobileConvexClient
  dco_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMobileConvexClient(
    dynamic raw,
  );

  @protected
  SubscriptionHandle
  dco_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerSubscriptionHandle(
    dynamic raw,
  );

  @protected
  FutureOr<void> Function(String)
  dco_decode_DartFn_Inputs_String_Output_unit_AnyhowException(dynamic raw);

  @protected
  FutureOr<void> Function(String, String?)
  dco_decode_DartFn_Inputs_String_opt_String_Output_unit_AnyhowException(
    dynamic raw,
  );

  @protected
  Object dco_decode_DartOpaque(dynamic raw);

  @protected
  Map<String, String> dco_decode_Map_String_String(dynamic raw);

  @protected
  ArcSubscriptionHandle
  dco_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcSubscriptionHandle(
    dynamic raw,
  );

  @protected
  CallbackSubscriber
  dco_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCallbackSubscriber(
    dynamic raw,
  );

  @protected
  CallbackSubscriberDartFn
  dco_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCallbackSubscriberDartFn(
    dynamic raw,
  );

  @protected
  MobileConvexClient
  dco_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMobileConvexClient(
    dynamic raw,
  );

  @protected
  SubscriptionHandle
  dco_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerSubscriptionHandle(
    dynamic raw,
  );

  @protected
  String dco_decode_String(dynamic raw);

  @protected
  QuerySubscriber dco_decode_TraitDef_QuerySubscriber(dynamic raw);

  @protected
  ClientError dco_decode_client_error(dynamic raw);

  @protected
  PlatformInt64 dco_decode_isize(dynamic raw);

  @protected
  Uint8List dco_decode_list_prim_u_8_strict(dynamic raw);

  @protected
  List<(String, String)> dco_decode_list_record_string_string(dynamic raw);

  @protected
  String? dco_decode_opt_String(dynamic raw);

  @protected
  (String, String) dco_decode_record_string_string(dynamic raw);

  @protected
  int dco_decode_u_8(dynamic raw);

  @protected
  void dco_decode_unit(dynamic raw);

  @protected
  BigInt dco_decode_usize(dynamic raw);

  @protected
  AnyhowException sse_decode_AnyhowException(SseDeserializer deserializer);

  @protected
  ArcSubscriptionHandle
  sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcSubscriptionHandle(
    SseDeserializer deserializer,
  );

  @protected
  CallbackSubscriber
  sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCallbackSubscriber(
    SseDeserializer deserializer,
  );

  @protected
  CallbackSubscriberDartFn
  sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCallbackSubscriberDartFn(
    SseDeserializer deserializer,
  );

  @protected
  MobileConvexClient
  sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMobileConvexClient(
    SseDeserializer deserializer,
  );

  @protected
  SubscriptionHandle
  sse_decode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerSubscriptionHandle(
    SseDeserializer deserializer,
  );

  @protected
  CallbackSubscriber
  sse_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCallbackSubscriber(
    SseDeserializer deserializer,
  );

  @protected
  CallbackSubscriberDartFn
  sse_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCallbackSubscriberDartFn(
    SseDeserializer deserializer,
  );

  @protected
  MobileConvexClient
  sse_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMobileConvexClient(
    SseDeserializer deserializer,
  );

  @protected
  SubscriptionHandle
  sse_decode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerSubscriptionHandle(
    SseDeserializer deserializer,
  );

  @protected
  Object sse_decode_DartOpaque(SseDeserializer deserializer);

  @protected
  Map<String, String> sse_decode_Map_String_String(
    SseDeserializer deserializer,
  );

  @protected
  ArcSubscriptionHandle
  sse_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcSubscriptionHandle(
    SseDeserializer deserializer,
  );

  @protected
  CallbackSubscriber
  sse_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCallbackSubscriber(
    SseDeserializer deserializer,
  );

  @protected
  CallbackSubscriberDartFn
  sse_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCallbackSubscriberDartFn(
    SseDeserializer deserializer,
  );

  @protected
  MobileConvexClient
  sse_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMobileConvexClient(
    SseDeserializer deserializer,
  );

  @protected
  SubscriptionHandle
  sse_decode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerSubscriptionHandle(
    SseDeserializer deserializer,
  );

  @protected
  String sse_decode_String(SseDeserializer deserializer);

  @protected
  ClientError sse_decode_client_error(SseDeserializer deserializer);

  @protected
  PlatformInt64 sse_decode_isize(SseDeserializer deserializer);

  @protected
  Uint8List sse_decode_list_prim_u_8_strict(SseDeserializer deserializer);

  @protected
  List<(String, String)> sse_decode_list_record_string_string(
    SseDeserializer deserializer,
  );

  @protected
  String? sse_decode_opt_String(SseDeserializer deserializer);

  @protected
  (String, String) sse_decode_record_string_string(
    SseDeserializer deserializer,
  );

  @protected
  int sse_decode_u_8(SseDeserializer deserializer);

  @protected
  void sse_decode_unit(SseDeserializer deserializer);

  @protected
  BigInt sse_decode_usize(SseDeserializer deserializer);

  @protected
  int sse_decode_i_32(SseDeserializer deserializer);

  @protected
  bool sse_decode_bool(SseDeserializer deserializer);

  @protected
  void sse_encode_AnyhowException(
    AnyhowException self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcSubscriptionHandle(
    ArcSubscriptionHandle self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCallbackSubscriber(
    CallbackSubscriber self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCallbackSubscriberDartFn(
    CallbackSubscriberDartFn self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMobileConvexClient(
    MobileConvexClient self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_Auto_Owned_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerSubscriptionHandle(
    SubscriptionHandle self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCallbackSubscriber(
    CallbackSubscriber self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCallbackSubscriberDartFn(
    CallbackSubscriberDartFn self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMobileConvexClient(
    MobileConvexClient self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_Auto_Ref_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerSubscriptionHandle(
    SubscriptionHandle self,
    SseSerializer serializer,
  );

  @protected
  void sse_encode_DartFn_Inputs_String_Output_unit_AnyhowException(
    FutureOr<void> Function(String) self,
    SseSerializer serializer,
  );

  @protected
  void sse_encode_DartFn_Inputs_String_opt_String_Output_unit_AnyhowException(
    FutureOr<void> Function(String, String?) self,
    SseSerializer serializer,
  );

  @protected
  void sse_encode_DartOpaque(Object self, SseSerializer serializer);

  @protected
  void sse_encode_Map_String_String(
    Map<String, String> self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcSubscriptionHandle(
    ArcSubscriptionHandle self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCallbackSubscriber(
    CallbackSubscriber self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCallbackSubscriberDartFn(
    CallbackSubscriberDartFn self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMobileConvexClient(
    MobileConvexClient self,
    SseSerializer serializer,
  );

  @protected
  void
  sse_encode_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerSubscriptionHandle(
    SubscriptionHandle self,
    SseSerializer serializer,
  );

  @protected
  void sse_encode_String(String self, SseSerializer serializer);

  @protected
  void sse_encode_client_error(ClientError self, SseSerializer serializer);

  @protected
  void sse_encode_isize(PlatformInt64 self, SseSerializer serializer);

  @protected
  void sse_encode_list_prim_u_8_strict(
    Uint8List self,
    SseSerializer serializer,
  );

  @protected
  void sse_encode_list_record_string_string(
    List<(String, String)> self,
    SseSerializer serializer,
  );

  @protected
  void sse_encode_opt_String(String? self, SseSerializer serializer);

  @protected
  void sse_encode_record_string_string(
    (String, String) self,
    SseSerializer serializer,
  );

  @protected
  void sse_encode_u_8(int self, SseSerializer serializer);

  @protected
  void sse_encode_unit(void self, SseSerializer serializer);

  @protected
  void sse_encode_usize(BigInt self, SseSerializer serializer);

  @protected
  void sse_encode_i_32(int self, SseSerializer serializer);

  @protected
  void sse_encode_bool(bool self, SseSerializer serializer);
}

// Section: wire_class

class RustLibWire implements BaseWire {
  RustLibWire.fromExternalLibrary(ExternalLibrary lib);

  void
  rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcSubscriptionHandle(
    int ptr,
  ) => wasmModule
      .rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcSubscriptionHandle(
        ptr,
      );

  void
  rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcSubscriptionHandle(
    int ptr,
  ) => wasmModule
      .rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcSubscriptionHandle(
        ptr,
      );

  void
  rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCallbackSubscriber(
    int ptr,
  ) => wasmModule
      .rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCallbackSubscriber(
        ptr,
      );

  void
  rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCallbackSubscriber(
    int ptr,
  ) => wasmModule
      .rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCallbackSubscriber(
        ptr,
      );

  void
  rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCallbackSubscriberDartFn(
    int ptr,
  ) => wasmModule
      .rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCallbackSubscriberDartFn(
        ptr,
      );

  void
  rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCallbackSubscriberDartFn(
    int ptr,
  ) => wasmModule
      .rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCallbackSubscriberDartFn(
        ptr,
      );

  void
  rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMobileConvexClient(
    int ptr,
  ) => wasmModule
      .rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMobileConvexClient(
        ptr,
      );

  void
  rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMobileConvexClient(
    int ptr,
  ) => wasmModule
      .rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMobileConvexClient(
        ptr,
      );

  void
  rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerSubscriptionHandle(
    int ptr,
  ) => wasmModule
      .rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerSubscriptionHandle(
        ptr,
      );

  void
  rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerSubscriptionHandle(
    int ptr,
  ) => wasmModule
      .rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerSubscriptionHandle(
        ptr,
      );
}

@JS('wasm_bindgen')
external RustLibWasmModule get wasmModule;

@JS()
@anonymous
extension type RustLibWasmModule._(JSObject _) implements JSObject {
  external void
  rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcSubscriptionHandle(
    int ptr,
  );

  external void
  rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerArcSubscriptionHandle(
    int ptr,
  );

  external void
  rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCallbackSubscriber(
    int ptr,
  );

  external void
  rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCallbackSubscriber(
    int ptr,
  );

  external void
  rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCallbackSubscriberDartFn(
    int ptr,
  );

  external void
  rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerCallbackSubscriberDartFn(
    int ptr,
  );

  external void
  rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMobileConvexClient(
    int ptr,
  );

  external void
  rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerMobileConvexClient(
    int ptr,
  );

  external void
  rust_arc_increment_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerSubscriptionHandle(
    int ptr,
  );

  external void
  rust_arc_decrement_strong_count_RustOpaque_flutter_rust_bridgefor_generatedRustAutoOpaqueInnerSubscriptionHandle(
    int ptr,
  );
}
