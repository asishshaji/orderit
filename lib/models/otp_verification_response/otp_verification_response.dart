import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_verification_response.freezed.dart';
part 'otp_verification_response.g.dart';

@freezed
class OtpVerificationResponse with _$OtpVerificationResponse {
  factory OtpVerificationResponse({
    String? status,
    String? message,
    dynamic email,
    @JsonKey(name: 'user_id') String? userId,
    dynamic username,
    String? refresh,
    String? access,
  }) = _OtpVerificationResponse;

  factory OtpVerificationResponse.fromJson(Map<String, dynamic> json) =>
      _$OtpVerificationResponseFromJson(json);
}
