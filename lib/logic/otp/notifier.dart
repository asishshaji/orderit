part of 'provider.dart';

class OtpNotifer extends StateNotifier<OtpState> {
  final IOtpRepository _otpRepository;

  final _storage = const SecureStorage();

  OtpNotifer({
    required IOtpRepository otpRepository,
  })  : _otpRepository = otpRepository,
        super(const OtpState.initial());

  Future<void> checkAuthenticated() async {
    state = const OtpState.initial();
  }

  Future<void> submitPhone(String phone) async {
    state = const OtpState.waiting();
    try {
      Status sb = await _otpRepository.submitPhone(
        SubmitPhone(
          phone: phone,
          purpose: PURPOSE_LOGIN,
        ),
      );
      log(sb.toString());
      if (sb.status == FALSE) {
        state = OtpState.error(sb.message);
      }
    } catch (e) {
      state = OtpState.error(e.toString());
      throw Exception(e);
    }
  }

  Future<void> verifyOtp(String phone, String otp) async {
    try {
      OtpVerificationResponse response = await _otpRepository.verifyOtp(
        SubmitPhone(
          phone: phone,
          purpose: PURPOSE_LOGIN,
          otp: otp,
        ),
      );

      if (response.status == SUCCESS) {
        _storage.saveAccessToken(response.access.toString());
        _storage.saveRefreshToken(response.refresh.toString());
        _storage.saveUID(response.userId.toString());
        state = const OtpState.success();
      } else {
        state = const OtpState.error(INVALID_OTP);
      }
    } catch (e) {
      state = OtpState.error(e.toString());
      throw Exception(e);
    }
  }
}
