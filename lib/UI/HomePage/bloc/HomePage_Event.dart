// ignore_for_file: non_constant_identifier_names

library HomePage_Event;

import 'dart:convert';
import 'dart:io';
import 'package:built_value/built_value.dart';


part 'HomePage_Event.g.dart';

abstract class HomePageEvent{}


abstract class ChangeSelectedItem extends HomePageEvent
    implements Built<ChangeSelectedItem, ChangeSelectedItemBuilder> {
  String? get Country;
  ChangeSelectedItem._();
  factory ChangeSelectedItem([Function(ChangeSelectedItemBuilder b) updates]) = _$ChangeSelectedItem;
}

