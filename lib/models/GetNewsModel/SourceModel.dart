//
//
//
library SourceModel;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:newsapi/models/serializer/serializer.dart';



part 'SourceModel.g.dart';

abstract class SourceModel
    implements Built<SourceModel,SourceModelBuilder> {
  String? get id;
  String? get name;




  SourceModel._();
  factory SourceModel([void Function(SourceModelBuilder b)? updates]) =  _$SourceModel;
  String toJson() {
    return json
        .encode(serializers.serializeWith(SourceModel.serializer, this));
  }
  static SourceModel? fromJson(String jsonString) {
    return serializers.deserializeWith(
        SourceModel.serializer, json.decode(jsonString));
  }

  static Serializer<SourceModel> get serializer => _$sourceModelSerializer;
}


