
import 'package:newsapi/models/GetNewsModel/GetNewsModel.dart';

abstract class IRepository {
  Future<GetNewsModel> GetNews(String Country,String category);
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
  // Future<GetGenderModel> GetGenders();
  // Future<UserData> GoogleLogin(
  //     String Email,
  //     String name,
  //     String fcmToken,
  //     String avatar,
  //     );
 // Future<UserDataModel> Login(String Email,String Password,String fcmToken,);
}
