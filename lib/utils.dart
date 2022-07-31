import 'dart:convert';

import 'package:flutter/services.dart';

Future<Map<String, dynamic>> readMockJson(String filename) async {
  final String response =
      await rootBundle.loadString("assets/mock_data/$filename");
  return await jsonDecode(response);
}
