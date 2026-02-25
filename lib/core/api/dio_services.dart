import 'package:dio/dio.dart';
import 'package:hungry/core/api/api_interceptors.dart';
import 'package:hungry/core/api/api_services.dart';
import 'package:hungry/core/api/constatnt.dart';

class DioService extends ApiService {
  final Dio dio;

  DioService({required this.dio}) {
    dio.options.baseUrl = EndPoint.baseUrl;
    dio.interceptors.add(ApiInterceptors());
    dio.interceptors.add(
      LogInterceptor(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: true,
        responseBody: true,
        error: true,
      ),
    );
  }

  @override
  Future get({
    required String path,
    data,
    Map<String, dynamic>? queryParameters,
    bool? isFormData = false,
  }) async {
    final Response response = await dio.get(
      path,
      data: isFormData == true ? FormData.fromMap(data) : data,
      queryParameters: queryParameters,
    );
    response.data;
  }

  @override
  Future post({
    required String path,
    data,
    Map<String, dynamic>? queryParameters,
    bool? isFormData = false,
  }) async {
    
      final Response response = await dio.post(
        path,
        data: isFormData == true ? FormData.fromMap(data) : data,
        queryParameters: queryParameters,
      );
      response.data;
    
  }

  @override
  Future delete({
    required String path,
    data,
    Map<String, dynamic>? queryParameters,
    bool? isFormData = false,
  }) async {
    final Response response = await dio.delete(
      path,
      data: isFormData == true ? FormData.fromMap(data) : data,
      queryParameters: queryParameters,
    );
    response.data;
  }

  @override
  Future patch({
    required String path,
    data,
    Map<String, dynamic>? queryParameters,
    bool? isFormData = false,
  }) async {
    final Response response = await dio.patch(
      path,
      data: isFormData == true ? FormData.fromMap(data) : data,
      queryParameters: queryParameters,
    );
    response.data;
  }
}
