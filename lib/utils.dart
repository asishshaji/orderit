import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:orderit/constants.dart';
import 'package:orderit/utils/secure_storage.dart';

Future<Map<String, dynamic>> readMockJson(String filename) async {
  final String response = await rootBundle.loadString("assets/mock_data/$filename");
  return await jsonDecode(response);
}

Future<Map<String, String>> refreshTokens() async {
  Map<String, String> tokens = {};

  const sStorage = SecureStorage();
  final dio = Dio();

  String? rToken = await sStorage.readRefreshToken();

  final response = await dio.post(REFRESH_TOKEN, data: {
    "refresh": rToken,
  });

  if (response.statusCode == 200) {
    tokens['access'] = response.data['access'];
    tokens['refresh'] = response.data['refresh'];
    await sStorage.saveAccessToken(tokens['access'].toString());
    await sStorage.saveRefreshToken(tokens['refresh'].toString());
  }

  return tokens;
}
