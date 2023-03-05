import 'dart:async';
import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'App/app.dart';
import 'Injection.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:country_codes/country_codes.dart';
class MyHttpOverrides extends HttpOverrides{
  @override
  HttpClient createHttpClient(SecurityContext? context){
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port)=> true;
  }
}

void main() async {
  try {
    HttpOverrides.global =  MyHttpOverrides();
//SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
//     statusBarColor: Colors.transparent,
//  ));

    WidgetsFlutterBinding.ensureInitialized();
    // await Firebase.initializeApp(
    //
    // );
    await iniGetIt();
    await CountryCodes.init();
    // await Gleap.initialize(
    //   token: '93AmJho7YPNoLs3F5Oe3jPZHlxF7wjZ5',
    // );
    await ScreenUtil.ensureScreenSize();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
          statusBarColor: Colors.black,
          systemNavigationBarColor: Colors.black
      ),
    );
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    // double latitude = 45.5017;
    // double longitude = -73.5673;
    //
    // String tz = tzmap.latLngToTimezoneString(latitude, longitude);
    // print('Montreal is in the $tz time zone.');
  }catch(e){
    print(e);
  }
  runApp(ProviderScope(child:MyApp()));
}
///keytool -genkey -v -keystore upload-keystore.jks -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 -alias upload
//// flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs
//// flutter pub get && flutter pub run build_runner watch
//// flutter logs
//// flutter build apk --split-per-abi
//// flutter build appbundle
//flutter build apk --target-platform android-arm,android-arm64,android-x64 --split-per-abi --obfuscate --split-debug-info=Bubbles\build\app\outputs\flutter-apk

//todo : make loading finish once bubbles are successfuly settled correctly


//…or create a new repository on the command line
//echo "# Bubbles" >> README.md
//git init
//git add README.md
//git commit -m "first commit"
//git branch -M sub_sub
//https://github.com/Saedxd/Bubbles/tree/sub_main
//git remote add origin https://github.com/Saedxd/World-Live-News-App
//git push -u origin main
//…or push an existing repository from the command line


//git remote add origin https://github.com/Saedxd/-.git
//git branch -M main
//git push -u origin main

