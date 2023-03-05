import 'dart:convert';
import 'dart:developer';


import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:cookie_jar/cookie_jar.dart';
import 'package:built_collection/built_collection.dart';
import 'package:newsapi/models/GetNewsModel/GetNewsModel.dart';
import 'package:newsapi/models/serializer/serializer.dart';

import 'Ihttp_helper.dart';
import 'dart:io';
import 'dart:core';

class HttpHelper implements IHttpHelper {
  Dio? _dio;
  Dio? _dio2;
  var cookieJar = CookieJar();

  HttpHelper(this._dio, this._dio2) {
    _dio!.interceptors.add(LogInterceptor(
      request: true,
      responseBody: true,
      requestBody: true,
    ));
    _dio!.interceptors.add(CookieManager(cookieJar));

    _dio2!.interceptors.add(LogInterceptor(
      request: true,
      responseBody: true,
      requestBody: true,
    ));
  }




  @override
  Future<GetNewsModel> GetNews(String Country,String category)async{
    try {
      final response = await _dio!
          .get('top-headlines?country=$Country&category=$category&apiKey=29b2628c86ba49f0951e3785fb5ed0e1', options: Options(headers: {
        "Accept" :"application/json"
      }));

      if (response.statusCode == 200){

        final baseResponse = serializers.deserialize(json.decode(response.data),
            specifiedType: const FullType(
              GetNewsModel,
              [
                FullType(
                  BuiltList,
                  [
                    FullType(GetNewsModel),
                  ],
                ),
              ],
            )) as GetNewsModel;

        return baseResponse;
      }else{
        throw NetworkException();
      }
    } on SocketException catch (e) {
      throw NetworkException();
    } catch (e) {
      print(e);
      throw NetworkException();
    }
  }

  // @override
  // Future<AddVolModel> AddVol(
  //     String gender,
  //     String uni_sp,
  //     String area,
  //     String street,
  //     String phone,
  //     String email,
  //     String note,
  //     String full_name,
  //     String old,
  //     String noid,
  //     )async{
  //   try {
  //     final formData = {
  //       "gender": gender,
  //       "uni_sp": uni_sp,
  //       "area": area,
  //       "street": street,
  //       "phone": phone,
  //       "email": email,
  //       "note": note,
  //       "full_name": full_name,
  //       "old": old,
  //       "noid": noid,
  //     };
  //     final response = await _dio!
  //         .post('add_vol', data:formData, options: Options(headers: {
  //       "Accept" :"application/json"
  //     }));
  //
  //     if (response.statusCode == 200){
  //
  //       final baseResponse = serializers.deserialize(json.decode(response.data),
  //           specifiedType: const FullType(
  //             AddVolModel,
  //             [
  //               FullType(
  //                 BuiltList,
  //                 [
  //                   FullType(AddVolModel),
  //                 ],
  //               ),
  //             ],
  //           )) as AddVolModel;
  //
  //       return baseResponse;
  //     }else{
  //       throw NetworkException();
  //     }
  //   } on SocketException catch (e) {
  //     throw NetworkException();
  //   } catch (e) {
  //     throw NetworkException();
  //   }
  // }

}

class NetworkException implements Exception {}
