// ignore_for_file: file_names

import 'dart:io';

import 'package:newsapi/models/GetNewsModel/GetNewsModel.dart';








abstract class IHttpHelper {
  Future<GetNewsModel> GetNews(String Country,String category);
  //
  // Future<GetUrlDataModel> GetUrls();
  // Future<PostsData> GetPosts();
  // Future<AdminDataModel> GetAdmins();
  // Future<SendMessageModel> SendMessage(
  //     String name,
  //     String Email,
  //     String title,
  //     String body
  //     );
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
  //     );
// Future<UserDataModel> Login(String Email, String password,String fcmToken);
  // Future<GetGenderModel> GetGenders();

}

