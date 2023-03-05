// ignore_for_file: non_constant_identifier_names

library NewsPage_Event;

import 'dart:convert';
import 'dart:io';
import 'package:built_value/built_value.dart';


part 'NewsPage_Event.g.dart';

abstract class NewsPageEvent{}



abstract class GetNews extends NewsPageEvent
    implements Built<GetNews, GetNewsBuilder> {
String? get Country_Code;
String? get Category;

  GetNews._();
  factory GetNews([Function(GetNewsBuilder b) updates]) = _$GetNews;
}

