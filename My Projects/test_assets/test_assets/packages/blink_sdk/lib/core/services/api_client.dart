import 'dart:convert';

import 'package:blink_sdk/core/services/end_points.dart';
import "package:dio/dio.dart";

import 'json_custom_exceptions.dart';

class HttpService {
  Dio _dio = Dio();

  HttpService() {
    _dio = Dio(BaseOptions(
      baseUrl: EndPoints.baseUrl,
    ));
    initializeInterceptors();
  }

  Future<Response> get(String url, dynamic params) async {
    Response responseJson;
    try {
      final response = await _dio.get(url, queryParameters: params);
      responseJson = _returnResponse(response); // response;
    } on DioError catch (ex) {
      //print("error"+ex.response.statusCode.toString());
      if (ex.type == DioErrorType.receiveTimeout) {
        throw Exception("Connection Timeout Exception");
      }
      throw _returnResponse(ex.response);
    }

    return responseJson;
  }

  Future<Response> post(String url, Map<String, dynamic> data) async {
    Response responseJson;
    try {
      final response = await _dio.post(url, data: jsonEncode(data));
      responseJson = response; //json.decode(response);
    } on DioError catch (ex) {
      if (ex.type == DioErrorType.receiveTimeout) {
        throw Exception("Connection Timeout Exception");
      }
      throw Exception(ex.message);
    }
    return responseJson;
  }

  Future<Response> delete(String url) async {
    Response responseJson;
    try {
      final response = await _dio.delete(url);
      responseJson = response; //json.decode(response);
    } on DioError catch (ex) {
      print(ex.response);
      print(ex.error);
      print(ex.message);
      if (ex.type == DioErrorType.receiveTimeout) {
        throw Exception("Connection Timeout Exception");
      }
      throw Exception(ex.message);
    }
    return responseJson;
  }

  Future<Response> put(String url, Map<String, dynamic> data) async {
    Response responseJson;
    try {
      final response = await _dio.put(url, data: jsonEncode(data));
      responseJson = response; //json.decode(response);
    } on DioError catch (ex) {
      print(ex.response);
      print(ex.error);
      print(ex.message);
      if (ex.type == DioErrorType.receiveTimeout) {
        throw Exception("Connection Timeout Exception");
      }
      throw Exception(ex.message);
    }
    return responseJson;
  }

  dynamic _returnResponse(response) {
    switch (response.statusCode) {
      case 200:
        {
          var responseJson = response; //json.decode(response.data.toString());
          return responseJson;
        }
      case 201:
        var responseJson = response; //json.decode(response.data.toString());
        return responseJson;
      case 400:
        {
          return BadRequestException(response.toString());
        }
      case 401:
      case 403:
        {
          return UnauthorisedException(response.toString());
        }
      case 404:
        {
          return NotFound(response.toString());
        }
      case 500:

      default:
        return FetchDataException(
            'Error occured while Communication with Server with StatusCode : ${response.statusCode}');
    }
  }

  initializeInterceptors() {
    _dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) async {
        options.headers['Rest-id'] = '54763';
        options.headers['App-name'] = 'blinkrestaurant';
    //    options.headers['App-name'] = 'test';
        // if (options.path != '/Token') {
        // options.headers['Authorization'] = 'Header Comes Here';
        //    }

        handler.next(options);
      },
      onResponse: (response, handler) {
        // print("The response is following ::: ${response}");
        return handler.next(response);
      },
      onError: (DioError e, handler) async {
        print("error ::: ${e}");

        return handler.next(e);
      },
    ));
  }
}
