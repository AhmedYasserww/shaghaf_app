import 'package:dio/dio.dart';

class ApiService {
  final _baseUrl = 'https://shagaf-bl7b.onrender.com/';
  final Dio _dio;

  ApiService(this._dio);

  Future<Map<String, dynamic>> get({required String endPoint, Map<String, dynamic>? data}) async {
    Response response = await _dio.get('$_baseUrl$endPoint',data: data);
    return response.data;
  }
  Future<Map<String, dynamic>> post({required String endPoint, required Map<String, dynamic> data}) async {
    Response response = await _dio.post('$_baseUrl$endPoint',data: data);
    return response.data;
  }
}
