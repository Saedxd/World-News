library NewsPage_State;


import 'dart:io';
import 'package:built_value/built_value.dart';
import 'package:newsapi/models/GetNewsModel/GetNewsModel.dart';


part 'NewsPage_State.g.dart';

abstract class NewsPageState implements Built<NewsPageState, NewsPageStateBuilder>   {
  // fields go here
  String? get error;
  bool? get isLoading;
  bool? get success;
  GetNewsModel? get GetNews;

  NewsPageState._();

  factory NewsPageState([updates(NewsPageStateBuilder b)]) = _$NewsPageState;
  factory NewsPageState.initail() {
    return NewsPageState((b) => b
        ..error =""
      ..isLoading = false
      ..success = false
      ..GetNews = null

    );
  }




}
