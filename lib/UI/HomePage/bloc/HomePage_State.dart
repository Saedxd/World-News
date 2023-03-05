library ContributeScreen_State;


import 'dart:io';
import 'package:built_value/built_value.dart';


part 'HomePage_State.g.dart';

abstract class HomePageState implements Built<HomePageState, HomePageStateBuilder>   {
  // fields go here
  String? get error;
  bool? get isLoading;
  bool? get success;

  String? get SelectedItem;
  bool? get isBackPressedOrTouchedOutSide;
  bool? get Selected;

  HomePageState._();

  factory HomePageState([updates(HomePageStateBuilder b)]) = _$HomePageState;
  factory HomePageState.initail() {
    return HomePageState((b) => b
        ..error =""
        ..SelectedItem =""
      ..isLoading = false
      ..success = false
      ..Selected = false
      ..isBackPressedOrTouchedOutSide = false

    );
  }




}
