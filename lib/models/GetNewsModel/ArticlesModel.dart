//
library ArticlesModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:newsapi/models/GetNewsModel/SourceModel.dart';
import 'package:newsapi/models/serializer/serializer.dart';



part 'ArticlesModel.g.dart';

abstract class ArticlesModel
    implements Built<ArticlesModel,ArticlesModelBuilder> {
SourceModel? get source;
String? get author;
String? get title;
String? get description;
String? get url;
String? get urlToImage;
String? get publishedAt;
String? get content;


  ArticlesModel._();
  factory ArticlesModel([void Function(ArticlesModelBuilder b)? updates]) =  _$ArticlesModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(ArticlesModel.serializer, this));
  }
  static ArticlesModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        ArticlesModel.serializer, json.decode(jsonString));
  }

  static Serializer<ArticlesModel> get serializer => _$articlesModelSerializer;
}

