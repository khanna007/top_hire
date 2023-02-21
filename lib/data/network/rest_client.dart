// import 'dart:io';
// import 'package:dio/dio.dart';
//
// enum Method { POST, GET, PUT, DELETE, PATCH }
//
// const baseurl = "https://staging.bilddit.com/rest";
//
// class RestClient {
//   Dio _dio = Dio();
//
//   static header() => {
//     'Content-Type': 'application/json',
//   };
//
//   Future<RestClient> init() async {
//     _dio = Dio(BaseOptions(baseUrl: baseurl, headers: header()));
//     initInterceptors();
//     return this;
//   }
//
//   void initInterceptors() {
//     _dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
//       return handler.next(options);
//     }, onResponse: (response, handler) {
//       return handler.next(response);
//     }, onError: (err, handler) {
//       return handler.next(err);
//     }));
//   }
//
//   Future<dynamic>
//   request(
//       String url, Method method, Map<String, dynamic>? params) async {
//     Response response;
//     try {
//       if (method == Method.POST) {
//         response = await _dio.post(url, data: params);
//         print("Url $url");
//       } else if (method == Method.DELETE) {
//         response = await _dio.delete(url);
//       } else if (method == Method.PATCH) {
//         response = await _dio.patch(url);
//       } else {
//         response = await _dio.get(
//           url,
//           queryParameters: params,
//         );
//       }
//
//       if (response.statusCode == 200) {
//         return response;
//       } else if (response.statusCode == 401) {
//         throw Exception("Unauthorized");
//       } else if (response.statusCode == 500) {
//         throw Exception("Server Error");
//       } else {
//         throw Exception("Something Went Wrong");
//       }
//     } on SocketException catch (e) {
//       throw Exception("No Internet Connection");
//     } on FormatException {
//       throw Exception("Bad Response Format!");
//     } on DioError catch (e) {
//       if(e.response?.statusCode==400){
//         return e.response;
//       }
//       throw Exception(e);
//     } catch (e) {
//       throw Exception("Something Went Wrong");
//     }
//   }
// }
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';

class RestClient {
  Dio? _dio;

  final baseUrl = "https://api.themoviedb.org/3/movie/";

  RestClient() {
    _dio = Dio(BaseOptions(baseUrl: baseUrl));
    initializationInterceptors();
  }

  Future<Response?> getRequest(String endPoint)async{
    Response ?response;
    try{
      response = await _dio?.get(endPoint);
    }on DioError catch (e){
    }
    return response;
  }

  initializationInterceptors() {
    _dio?.interceptors.add(InterceptorsWrapper(onError: (DioError e, handler) {
    }, onRequest: (options, handler) {
      return handler.next(options);
    }, onResponse: (response, handler) {
      return handler.next(response);
    }));
  }
}
