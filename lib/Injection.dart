// ignore_for_file: constant_identifier_names, file_names
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:newsapi/UI/HomePage/bloc/HomePage_Bloc.dart';
import 'package:newsapi/UI/NewsPage/bloc/NewsPage_Bloc.dart';
import 'Data/http_helper/Ihttp_helper.dart';
import 'Data/http_helper/http_helper.dart';
import 'Data/prefs_helper/iprefs_helper.dart';
import 'Data/prefs_helper/prefs_helper.dart';
import 'Data/repository/irepository.dart';
import 'Data/repository/repository.dart';

final sl = GetIt.instance;


const BaseUrl = "https://newsapi.org/v2/";


Future iniGetIt() async {
  sl.registerLazySingleton(() => Dio(
      BaseOptions(baseUrl: BaseUrl, headers: {

      }, responseType: ResponseType.plain)

  ));

//DATA
  sl.registerLazySingleton<IHttpHelper>(() => HttpHelper(sl(), sl()));
  sl.registerLazySingleton<IRepository>(() => Repository(sl(), sl()));
  sl.registerLazySingleton<IPrefsHelper>(() => PrefsHelper());

  //factory means this dependency injection will provide us with new instance of get it everytime its called
  //so sometimes we call bloc in dispose which leads stream to close so useing the same instance that means it will be closed.
 // sl.registerFactory(() => HomeScreenBloc(sl()));
 // sl.registerFactory(() => ContributeScreenBloc(sl()));
 sl.registerFactory(() => HomePageBloc(sl()));
 sl.registerFactory(() => NewsPageBloc(sl()));

}
//we use this package for dependency injection and use for connecting all our APP with each other
//for example we give in constructor this get_it in both http and repository so the object can come IN the Easy Way.

