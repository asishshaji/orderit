// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'otp_verification_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OtpVerificationResponse _$OtpVerificationResponseFromJson(
    Map<String, dynamic> json) {
  return _OtpVerificationResponse.fromJson(json);
}

/// @nodoc
mixin _$OtpVerificationResponse {
  String? get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  dynamic get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  dynamic get username => throw _privateConstructorUsedError;
  String? get refresh => throw _privateConstructorUsedError;
  String? get access => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OtpVerificationResponseCopyWith<OtpVerificationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpVerificationResponseCopyWith<$Res> {
  factory $OtpVerificationResponseCopyWith(OtpVerificationResponse value,
          $Res Function(OtpVerificationResponse) then) =
      _$OtpVerificationResponseCopyWithImpl<$Res>;
  $Res call(
      {String? status,
      String? message,
      dynamic email,
      @JsonKey(name: 'user_id') String? userId,
      dynamic username,
      String? refresh,
      String? access});
}

/// @nodoc
class _$OtpVerificationResponseCopyWithImpl<$Res>
    implements $OtpVerificationResponseCopyWith<$Res> {
  _$OtpVerificationResponseCopyWithImpl(this._value, this._then);

  final OtpVerificationResponse _value;
  // ignore: unused_field
  final $Res Function(OtpVerificationResponse) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? email = freezed,
    Object? userId = freezed,
    Object? username = freezed,
    Object? refresh = freezed,
    Object? access = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refresh: refresh == freezed
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String?,
      access: access == freezed
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_OtpVerificationResponseCopyWith<$Res>
    implements $OtpVerificationResponseCopyWith<$Res> {
  factory _$$_OtpVerificationResponseCopyWith(_$_OtpVerificationResponse value,
          $Res Function(_$_OtpVerificationResponse) then) =
      __$$_OtpVerificationResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? status,
      String? message,
      dynamic email,
      @JsonKey(name: 'user_id') String? userId,
      dynamic username,
      String? refresh,
      String? access});
}

/// @nodoc
class __$$_OtpVerificationResponseCopyWithImpl<$Res>
    extends _$OtpVerificationResponseCopyWithImpl<$Res>
    implements _$$_OtpVerificationResponseCopyWith<$Res> {
  __$$_OtpVerificationResponseCopyWithImpl(_$_OtpVerificationResponse _value,
      $Res Function(_$_OtpVerificationResponse) _then)
      : super(_value, (v) => _then(v as _$_OtpVerificationResponse));

  @override
  _$_OtpVerificationResponse get _value =>
      super._value as _$_OtpVerificationResponse;

  @override
  $Res call({
    Object? status = freezed,
    Object? message = freezed,
    Object? email = freezed,
    Object? userId = freezed,
    Object? username = freezed,
    Object? refresh = freezed,
    Object? access = freezed,
  }) {
    return _then(_$_OtpVerificationResponse(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as dynamic,
      refresh: refresh == freezed
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String?,
      access: access == freezed
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OtpVerificationResponse implements _OtpVerificationResponse {
  _$_OtpVerificationResponse(
      {this.status,
      this.message,
      this.email,
      @JsonKey(name: 'user_id') this.userId,
      this.username,
      this.refresh,
      this.access});

  factory _$_OtpVerificationResponse.fromJson(Map<String, dynamic> json) =>
      _$$_OtpVerificationResponseFromJson(json);

  @override
  final String? status;
  @override
  final String? message;
  @override
  final dynamic email;
  @override
  @JsonKey(name: 'user_id')
  final String? userId;
  @override
  final dynamic username;
  @override
  final String? refresh;
  @override
  final String? access;

  @override
  String toString() {
    return 'OtpVerificationResponse(status: $status, message: $message, email: $email, userId: $userId, username: $username, refresh: $refresh, access: $access)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OtpVerificationResponse &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.refresh, refresh) &&
            const DeepCollectionEquality().equals(other.access, access));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(refresh),
      const DeepCollectionEquality().hash(access));

  @JsonKey(ignore: true)
  @override
  _$$_OtpVerificationResponseCopyWith<_$_OtpVerificationResponse>
      get copyWith =>
          __$$_OtpVerificationResponseCopyWithImpl<_$_OtpVerificationResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OtpVerificationResponseToJson(this);
  }
}

abstract class _OtpVerificationResponse implements OtpVerificationResponse {
  factory _OtpVerificationResponse(
      {final String? status,
      final String? message,
      final dynamic email,
      @JsonKey(name: 'user_id') final String? userId,
      final dynamic username,
      final String? refresh,
      final String? access}) = _$_OtpVerificationResponse;

  factory _OtpVerificationResponse.fromJson(Map<String, dynamic> json) =
      _$_OtpVerificationResponse.fromJson;

  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  String? get message => throw _privateConstructorUsedError;
  @override
  dynamic get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'user_id')
  String? get userId => throw _privateConstructorUsedError;
  @override
  dynamic get username => throw _privateConstructorUsedError;
  @override
  String? get refresh => throw _privateConstructorUsedError;
  @override
  String? get access => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_OtpVerificationResponseCopyWith<_$_OtpVerificationResponse>
      get copyWith => throw _privateConstructorUsedError;
}
