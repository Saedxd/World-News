import 'dart:convert';
import 'dart:io';

import 'package:newsapi/models/GetNewsModel/GetNewsModel.dart';

import '../http_helper/Ihttp_helper.dart';
import '../prefs_helper/iprefs_helper.dart';
import 'irepository.dart';

class Repository implements IRepository {
  IHttpHelper _ihttpHelper;
  IPrefsHelper _iprefHelper;

  Repository(this._ihttpHelper, this._iprefHelper);


  Future<GetNewsModel> GetNews(String Country,String category)async{
    final Data = await _ihttpHelper.GetNews(Country, category);
    return Data;
  }

  // Future<UserData> GoogleLogin(
  //     String Email,
  //     String name,
  //     String fcmToken,
  //     String avatar,
  //     )async{
  //   final Data = await _ihttpHelper.GoogleLogin(Email, name, fcmToken, avatar);
  //
  //   return Data;
  // }
  

  // Future<UserData> LoginSocial(String Token,String fcmToken,) async {
  //   // String auth = await _iprefHelper.getToken();
  //   // print(auth);
  // //  final Data = await _ihttpHelper.LoginSocial(Token, fcmToken);
  //
  //   return Data;
  // }
  // Future<GetUrlDataModel> GetUrls()async{
  //   final Data = await _ihttpHelper.GetUrls();
  //   return Data;
  // }
  //
  // Future<PostsData> GetPosts()async{
  //   final Data = await _ihttpHelper.GetPosts();
  //   return Data;
  // }
  //
  // Future<AdminDataModel> GetAdmins()async{
  //   final Data = await _ihttpHelper.GetAdmins();
  //   return Data;
  // }
  // Future<SendMessageModel> SendMessage(
  //     String name,
  //     String Email,
  //     String title,
  //     String body
  //     )async{
  //   final Data = await _ihttpHelper.SendMessage(name, Email, title, body);
  //   return Data;
  // }
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
  //   final Data = await _ihttpHelper.AddVol(gender, uni_sp, area, street, phone, email, note, full_name, old, noid);
  //   return Data;
  // }
// Future<UserDataModel> Login(String Email,String Password,String fcmToken,) async {
// //  final Data = await _ihttpHelper.Login(Email, Password, fcmToken);
// //
// //   return Data;
// // }
}
