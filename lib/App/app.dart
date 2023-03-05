import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:flutter/material.dart';
import 'package:newsapi/UI/Splash/pages/SplashPage.dart';

import '../core/Language/localization/demo_localization.dart';
import '../core/theme/theme_constants.dart';


class MyApp extends StatefulWidget {
  MyApp({
    Key? key,
  }) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class MyBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}


class _MyAppState extends State<MyApp> with WidgetsBindingObserver {

  @override
  void initState() {
    WidgetsFlutterBinding.ensureInitialized();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      builder: (BuildContext context, Widget? child) {
        return GestureDetector(
            onTap: () {
              SystemChannels.textInput.invokeMethod('TextInput.hide');
              //remove keyboard on touching anywhere on the screen.
              FocusScopeNode currentFocus = FocusScope.of(context);

              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
                FocusManager.instance.primaryFocus?.unfocus();
              }
            },
            child: MaterialApp(
              debugShowCheckedModeBanner: false,
              home: Splash(),
              title: 'World Live News',
              // localizationsDelegates: const [
              //   DemoLocalization.delegate,
              //   GlobalMaterialLocalizations.delegate,
              //   GlobalWidgetsLocalizations.delegate,
              //   GlobalCupertinoLocalizations.delegate
              // ],
            ));
      },
      designSize: Size(375, 812),
    );

  }
}
