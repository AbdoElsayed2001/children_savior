
import 'dart:convert';
import 'dart:ffi';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:kids_savior/models/login_model.dart';

class DioHelper
{
  static Dio? dio;

   static init (){
    dio = Dio(
      BaseOptions(
        baseUrl: "https://kids-saviour.megaa-soft.com/api/",
        receiveDataWhenStatusError : true,
        headers: {
          'Accept' : 'application/json',
          ' Authorization' : "access_token "
        }
      ),
    );
  }

  static Future<Response> getData ({
    required String url,
    required Map<String , dynamic > query,

}) async
  {
    dio!.options.headers = {
      'Authorization' : 'Bearer access_token'
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

  }) async
  {
    dio!.options.headers = {
      'Authorization' : 'Bearer token'
    };

    return await dio!.post(
      url,
      queryParameters: query,
      data: data,
    );
  }

}