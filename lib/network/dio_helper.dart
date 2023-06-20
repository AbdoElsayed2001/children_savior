import 'package:dio/dio.dart';
import 'package:kids_savior/network/cache_helper.dart';

class DioHelper
{
  static Dio? dio;

   static init (){
    dio = Dio(
      BaseOptions(
        baseUrl: "https://kids-saviour.megaa-soft.com/api/",
        receiveDataWhenStatusError : true,
      ),
    );
  }

  static Future<Response> getData ({
    required String url,
    Map<String , dynamic >? query,
    String? token,
}) async
  {
    dio!.options.headers = {
      'Accept' : 'application/json',
      'Authorization' : token ,
    };

    return await dio!.get(
      url,
      queryParameters: query,
    );
  }

  static Future<Response> postData ({
    required String url,
    Map<String , dynamic >? query,
    required Map<String , dynamic> data,
    String? token,
  }) async
  {
    dio!.options.headers = {
      'Accept' : 'application/json',
      'Authorization' : token ,
    };

    return await dio!.post(
      url,
      queryParameters: query,
      data: data,
    );
  }

}