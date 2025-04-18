

import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiConstants {
  static const String baseUrl = 'https://dummyjson.com';
}


Future<Map<String, dynamic>> loginUser(String email, String password) async {
  final url = Uri.parse('${ApiConstants.baseUrl}/auth/login');

  try {
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'username': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      print('Login Successful');
      return {
        'success': true,
        'data': data,
      };
    } else {
      final error = jsonDecode(response.body);
      return {
        'success': false,
        'message': error['message'],
      };
    }
  } catch (e) {
    return {
      'success': false,
      'message': e.toString(),
    };
  }
}

