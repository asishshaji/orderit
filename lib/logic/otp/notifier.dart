part of 'provider.dart';

class OtpNotifer extends StateNotifier<OtpState> {
  final IOtpRepository _otpRepository;

  OtpNotifer({
    required IOtpRepository otpRepository,
  })  : _otpRepository = otpRepository,
        super(const OtpState.initial());

  Future<void> checkAuthenticated() async {
    state = const OtpState.initial();
  }

  Future<void> submitPhone(String phone) async {
    try {
      SubmitPhone sb = await _otpRepository.submitPhone(
        SubmitPhone(
          phone: phone,
          purpose: PURPOSE_LOGIN,
        ),
      );
      log(sb.toString());
      state = const OtpState.waiting();
    } catch (e) {
      state = OtpState.error(e.toString());
      throw Exception(e);
    }
  }

  Future<void> verifyOtp(String phone, String otp) async {
    try {
      SubmitPhone submitPhone = await _otpRepository.verifyOtp(
        SubmitPhone(
          phone: phone,
          purpose: PURPOSE_LOGIN,
          otp: otp,
        ),
      );

      if (submitPhone.phone == phone) {
        state = const OtpState.success();
      } else {
        state = const OtpState.error("Invalid otp");
      }
    } catch (e) {
      state = OtpState.error(e.toString());
      throw Exception(e);
    }
  }
}
