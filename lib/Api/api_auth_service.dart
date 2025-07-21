import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class AuthService {
  final Dio _dio = Dio(BaseOptions(baseUrl: 'http://localhost:8000/'));

  Future<Map<String, dynamic>> registerUser(String username, String password) async {
    try {
      final response = await _dio.post(
        '/api/create-user',
        data: {
          'username': username,
          'password': password,
        },
      );
      return {
        'success': true,
        'message': response.data['msg'],
        'token': response.data['token'],
      };
    } catch (e) {
      debugPrint("This is The Error : $e");

      return {
        'success': false,
        'message': 'Registration failed',

      };
    }
  }

  Future<Map<String, dynamic>> loginUser(String username, String password) async {
    try {
      final response = await _dio.post(
        '/api/auth/login',
        data: {
          'username': username,
          'password': password,
        },
      );
      return {
        'success': true,
        'message': response.data['message'],
        'token': response.data['token'],
      };
    } catch (e) {
      return {
        'success': false,
        'message': 'Login failed',
      };
    }
  }
}
