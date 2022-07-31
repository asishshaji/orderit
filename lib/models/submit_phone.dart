import 'package:freezed_annotation/freezed_annotation.dart';

part 'submit_phone.freezed.dart';
part 'submit_phone.g.dart';

@freezed
class SubmitPhone with _$SubmitPhone {
  const factory SubmitPhone({
    required String phone,
    required String purpose,
    String? otp,
  }) = _SubmitPhone;

  factory SubmitPhone.fromJson(Map<String, Object?> json) =>
      _$SubmitPhoneFromJson(json);
}
