//
//
library GetNewsModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:newsapi/models/GetNewsModel/ArticlesModel.dart';
import 'package:newsapi/models/serializer/serializer.dart';



part 'GetNewsModel.g.dart';

abstract class GetNewsModel
    implements Built<GetNewsModel,GetNewsModelBuilder> {

  String? get status;
  int? get totalResults;
  BuiltList<ArticlesModel>? get articles;


  GetNewsModel._();
  factory GetNewsModel([void Function(GetNewsModelBuilder b)? updates]) =  _$GetNewsModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(GetNewsModel.serializer, this));
  }
  static GetNewsModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        GetNewsModel.serializer, json.decode(jsonString));
  }

  static Serializer<GetNewsModel> get serializer => _$getNewsModelSerializer;
}


