import 'package:dio/dio.dart';
import 'package:orderit/utils.dart';
import 'package:orderit/utils/secure_storage.dart';

class ApiBase {
  late Dio dio;
  final SecureStorage secureStorage = const SecureStorage();

  ApiBase() {
    dio = Dio(
      BaseOptions(
        receiveTimeout: 15000, // 15 seconds
        connectTimeout: 15000,
        sendTimeout: 15000,
      ),
    );
    dio.interceptors.add(InterceptorsWrapper(onError: (error, _) async {
      if (error.response?.statusCode == 403 || error.response?.statusCode == 401) {
        await refreshTokens();
      }
    }));
  }
}
