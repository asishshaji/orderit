import 'package:dio/dio.dart';
import 'package:orderit/constants.dart';
import 'package:orderit/models/otp_verification_response/otp_verification_response.dart';
import 'package:orderit/models/status.dart';
import 'package:orderit/models/submit_phone.dart';

abstract class IOtpRepository {
  Future<Status> submitPhone(SubmitPhone sbData);
  Future<OtpVerificationResponse> verifyOtp(SubmitPhone sbData);
}

class OtpRepository implements IOtpRepository {
  final _dio = Dio();

  @override
  Future<Status> submitPhone(SubmitPhone sbData) async {
    try {
      final response = await _dio.post(
        SUBMIT_PHONE_OTP,
        data: sbData.toJson(),
      );

      return Status.fromJson(response.data);
    } on DioError catch (e) {
      return Status.fromJson(e.response?.data);
    }
  }

  @override
  Future<OtpVerificationResponse> verifyOtp(SubmitPhone sbData) async {
    try {
      final response = await _dio.post(
        SUBMIT_OTP,
        data: sbData.toJson(),
      );
      return OtpVerificationResponse.fromJson(response.data);
    } catch (e) {
      throw Exception("Error connecting");
    }
  }
}
