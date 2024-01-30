import 'package:dio/dio.dart';
import 'package:dio_retrofit_example/network/logger/custom_interceptor.dart';

class DioClient {
  static Dio getDioClient(String accessToken) {
    return Dio(BaseOptions(
      headers: {'Authorization': 'bearer $accessToken'},
      baseUrl: 'https://dummyjson.com',
      connectTimeout: const Duration(milliseconds: 15000),
      sendTimeout: const Duration(milliseconds: 15000),
      receiveTimeout: const Duration(milliseconds: 15000),
    ))
      ..interceptors.add(CustomInterceptor());
  }
}
