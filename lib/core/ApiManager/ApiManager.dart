import 'package:dio/dio.dart';
import 'package:etfarrag/core/ApiManager/ApiConstants.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
@singleton
class ApiManager{
  static late Dio dio;
  static init(){
    dio=Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
      ),
    );
    dio.interceptors.add(PrettyDioLogger(
      requestBody: true,
      requestHeader: true,
      responseBody: true
    ));
  }
   Future<Response>getResponse(String domain,{Map<String, dynamic>? parameters})async{
    return await dio.get(domain,queryParameters: parameters);
  }
}