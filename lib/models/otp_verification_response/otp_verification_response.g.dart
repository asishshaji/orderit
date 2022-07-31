// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_verification_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OtpVerificationResponse _$$_OtpVerificationResponseFromJson(
        Map<String, dynamic> json) =>
    _$_OtpVerificationResponse(
      status: json['status'] as String?,
      message: json['message'] as String?,
      email: json['email'],
      userId: json['user_id'] as String?,
      username: json['username'],
      refresh: json['refresh'] as String?,
      access: json['access'] as String?,
    );

Map<String, dynamic> _$$_OtpVerificationResponseToJson(
        _$_OtpVerificationResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'email': instance.email,
      'user_id': instance.userId,
      'username': instance.username,
      'refresh': instance.refresh,
      'access': instance.access,
    };
