// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simple.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClientError {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClientError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ClientError()';
}


}

/// @nodoc
class $ClientErrorCopyWith<$Res>  {
$ClientErrorCopyWith(ClientError _, $Res Function(ClientError) __);
}


/// @nodoc


class ClientError_InternalError extends ClientError {
  const ClientError_InternalError({required this.msg}): super._();
  

 final  String msg;

/// Create a copy of ClientError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClientError_InternalErrorCopyWith<ClientError_InternalError> get copyWith => _$ClientError_InternalErrorCopyWithImpl<ClientError_InternalError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClientError_InternalError&&(identical(other.msg, msg) || other.msg == msg));
}


@override
int get hashCode => Object.hash(runtimeType,msg);

@override
String toString() {
  return 'ClientError.internalError(msg: $msg)';
}


}

/// @nodoc
abstract mixin class $ClientError_InternalErrorCopyWith<$Res> implements $ClientErrorCopyWith<$Res> {
  factory $ClientError_InternalErrorCopyWith(ClientError_InternalError value, $Res Function(ClientError_InternalError) _then) = _$ClientError_InternalErrorCopyWithImpl;
@useResult
$Res call({
 String msg
});




}
/// @nodoc
class _$ClientError_InternalErrorCopyWithImpl<$Res>
    implements $ClientError_InternalErrorCopyWith<$Res> {
  _$ClientError_InternalErrorCopyWithImpl(this._self, this._then);

  final ClientError_InternalError _self;
  final $Res Function(ClientError_InternalError) _then;

/// Create a copy of ClientError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? msg = null,}) {
  return _then(ClientError_InternalError(
msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ClientError_ConvexError extends ClientError {
  const ClientError_ConvexError({required this.data}): super._();
  

 final  String data;

/// Create a copy of ClientError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClientError_ConvexErrorCopyWith<ClientError_ConvexError> get copyWith => _$ClientError_ConvexErrorCopyWithImpl<ClientError_ConvexError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClientError_ConvexError&&(identical(other.data, data) || other.data == data));
}


@override
int get hashCode => Object.hash(runtimeType,data);

@override
String toString() {
  return 'ClientError.convexError(data: $data)';
}


}

/// @nodoc
abstract mixin class $ClientError_ConvexErrorCopyWith<$Res> implements $ClientErrorCopyWith<$Res> {
  factory $ClientError_ConvexErrorCopyWith(ClientError_ConvexError value, $Res Function(ClientError_ConvexError) _then) = _$ClientError_ConvexErrorCopyWithImpl;
@useResult
$Res call({
 String data
});




}
/// @nodoc
class _$ClientError_ConvexErrorCopyWithImpl<$Res>
    implements $ClientError_ConvexErrorCopyWith<$Res> {
  _$ClientError_ConvexErrorCopyWithImpl(this._self, this._then);

  final ClientError_ConvexError _self;
  final $Res Function(ClientError_ConvexError) _then;

/// Create a copy of ClientError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = null,}) {
  return _then(ClientError_ConvexError(
data: null == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ClientError_ServerError extends ClientError {
  const ClientError_ServerError({required this.msg}): super._();
  

 final  String msg;

/// Create a copy of ClientError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClientError_ServerErrorCopyWith<ClientError_ServerError> get copyWith => _$ClientError_ServerErrorCopyWithImpl<ClientError_ServerError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClientError_ServerError&&(identical(other.msg, msg) || other.msg == msg));
}


@override
int get hashCode => Object.hash(runtimeType,msg);

@override
String toString() {
  return 'ClientError.serverError(msg: $msg)';
}


}

/// @nodoc
abstract mixin class $ClientError_ServerErrorCopyWith<$Res> implements $ClientErrorCopyWith<$Res> {
  factory $ClientError_ServerErrorCopyWith(ClientError_ServerError value, $Res Function(ClientError_ServerError) _then) = _$ClientError_ServerErrorCopyWithImpl;
@useResult
$Res call({
 String msg
});




}
/// @nodoc
class _$ClientError_ServerErrorCopyWithImpl<$Res>
    implements $ClientError_ServerErrorCopyWith<$Res> {
  _$ClientError_ServerErrorCopyWithImpl(this._self, this._then);

  final ClientError_ServerError _self;
  final $Res Function(ClientError_ServerError) _then;

/// Create a copy of ClientError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? msg = null,}) {
  return _then(ClientError_ServerError(
msg: null == msg ? _self.msg : msg // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
