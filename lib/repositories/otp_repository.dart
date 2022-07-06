import 'package:dio/dio.dart';
import 'package:orderit/constants.dart';
import 'package:orderit/models/submit_phone.dart';

abstract class IOtpRepository {
  Future<SubmitPhone> submitPhone(SubmitPhone sbData);
  Future<SubmitPhone> verifyOtp(SubmitPhone sbData);
}

class OtpRepository implements IOtpRepository {
  final _dio = Dio();

  @override
  Future<SubmitPhone> submitPhone(SubmitPhone sbData) async {
    try {
      final response = await _dio.post(
        SUBMIT_PHONE_OTP,
        data: sbData.toJson(),
      );
      return SubmitPhone.fromJson(response.data);
    } catch (e) {
      throw Exception("Error connecting");
    }
  }

  @override
  Future<SubmitPhone> verifyOtp(SubmitPhone sbData) async {
    try {
      final response = await _dio.post(
        SUBMIT_OTP,
        data: sbData.toJson(),
      );
      return SubmitPhone.fromJson(response.data);
    } catch (e) {
      throw Exception("Error connecting");
    }
  }
}
