// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'submit_phone.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SubmitPhone _$SubmitPhoneFromJson(Map<String, dynamic> json) {
  return _SubmitPhone.fromJson(json);
}

/// @nodoc
mixin _$SubmitPhone {
  String get phone => throw _privateConstructorUsedError;
  String get purpose => throw _privateConstructorUsedError;
  String? get otp => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubmitPhoneCopyWith<SubmitPhone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubmitPhoneCopyWith<$Res> {
  factory $SubmitPhoneCopyWith(
          SubmitPhone value, $Res Function(SubmitPhone) then) =
      _$SubmitPhoneCopyWithImpl<$Res>;
  $Res call({String phone, String purpose, String? otp});
}

/// @nodoc
class _$SubmitPhoneCopyWithImpl<$Res> implements $SubmitPhoneCopyWith<$Res> {
  _$SubmitPhoneCopyWithImpl(this._value, this._then);

  final SubmitPhone _value;
  // ignore: unused_field
  final $Res Function(SubmitPhone) _then;

  @override
  $Res call({
    Object? phone = freezed,
    Object? purpose = freezed,
    Object? otp = freezed,
  }) {
    return _then(_value.copyWith(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: purpose == freezed
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String,
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_SubmitPhoneCopyWith<$Res>
    implements $SubmitPhoneCopyWith<$Res> {
  factory _$$_SubmitPhoneCopyWith(
          _$_SubmitPhone value, $Res Function(_$_SubmitPhone) then) =
      __$$_SubmitPhoneCopyWithImpl<$Res>;
  @override
  $Res call({String phone, String purpose, String? otp});
}

/// @nodoc
class __$$_SubmitPhoneCopyWithImpl<$Res> extends _$SubmitPhoneCopyWithImpl<$Res>
    implements _$$_SubmitPhoneCopyWith<$Res> {
  __$$_SubmitPhoneCopyWithImpl(
      _$_SubmitPhone _value, $Res Function(_$_SubmitPhone) _then)
      : super(_value, (v) => _then(v as _$_SubmitPhone));

  @override
  _$_SubmitPhone get _value => super._value as _$_SubmitPhone;

  @override
  $Res call({
    Object? phone = freezed,
    Object? purpose = freezed,
    Object? otp = freezed,
  }) {
    return _then(_$_SubmitPhone(
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      purpose: purpose == freezed
          ? _value.purpose
          : purpose // ignore: cast_nullable_to_non_nullable
              as String,
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SubmitPhone implements _SubmitPhone {
  const _$_SubmitPhone({required this.phone, required this.purpose, this.otp});

  factory _$_SubmitPhone.fromJson(Map<String, dynamic> json) =>
      _$$_SubmitPhoneFromJson(json);

  @override
  final String phone;
  @override
  final String purpose;
  @override
  final String? otp;

  @override
  String toString() {
    return 'SubmitPhone(phone: $phone, purpose: $purpose, otp: $otp)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SubmitPhone &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.purpose, purpose) &&
            const DeepCollectionEquality().equals(other.otp, otp));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(phone),
      const DeepCollectionEquality().hash(purpose),
      const DeepCollectionEquality().hash(otp));

  @JsonKey(ignore: true)
  @override
  _$$_SubmitPhoneCopyWith<_$_SubmitPhone> get copyWith =>
      __$$_SubmitPhoneCopyWithImpl<_$_SubmitPhone>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SubmitPhoneToJson(this);
  }
}

abstract class _SubmitPhone implements SubmitPhone {
  const factory _SubmitPhone(
      {required final String phone,
      required final String purpose,
      final String? otp}) = _$_SubmitPhone;

  factory _SubmitPhone.fromJson(Map<String, dynamic> json) =
      _$_SubmitPhone.fromJson;

  @override
  String get phone => throw _privateConstructorUsedError;
  @override
  String get purpose => throw _privateConstructorUsedError;
  @override
  String? get otp => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SubmitPhoneCopyWith<_$_SubmitPhone> get copyWith =>
      throw _privateConstructorUsedError;
}
