import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiService {
  final _baseUrl = 'https://shagaf-bl7b.onrender.com/';
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint, Map<String, dynamic>? data}) async {
    final prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('auth_token');
    Response response = await _dio.get('$_baseUrl$endPoint',
        queryParameters: data,
        options: Options(headers: {'Authorization': 'Bearer $token'})); // Add token if exists
    return response.data;
  }

  Future<Map<String, dynamic>> post({required String endPoint, required Map<String, dynamic> data}) async {
    final prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString('auth_token');
    Response response = await _dio.post('$_baseUrl$endPoint',
        data: data,
        options: Options(headers: {'Authorization': 'Bearer $token'})); // Add token if exists
    return response.data;
  }
}
