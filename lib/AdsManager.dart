// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';
//
// class AdsManager {
//   Future<InitializationStatus>? initialization;
//
//   Widget getbanner(String unitId,BannerAd Banner,bool Isloaded) {
//     String error= "";
//     Banner =
//         BannerAd(
//           adUnitId:unitId,
//           size: AdSize.largeBanner,
//           request: AdRequest(),
//           listener:_adListener
//         );
//     Banner.load();
//     return showAd1(Banner,true, error);
//
//
//   }
//
//   Widget showAd1(BannerAd Banner,bool isloaded,String Error) {
//     print("$Error error was foundddddddddddddddddddddddd");
//
//     return
//
//       Error==null
//
//       // ? isloaded
//           ? Container(
//
//               decoration: BoxDecoration(
//                 border: Border.all(color: Color(0xffffda11), ),
//                 //color: Color(0xffffda11),
//               ),
//               alignment: Alignment.center,
//               height: Banner.size.height.toDouble() ,
//               width: Banner.size.width.toDouble(),
//               child: AdWidget(ad: Banner),
//             )
//                 : Container(
//               color: Colors.black87,
//               alignment: Alignment.center,
//               width: double.infinity,
//               height: 50,
//             );
//
//     // :               Container(
//     //   color: Colors.black87,
//     //   alignment: Alignment.center,
//     //   width: double.infinity,
//     //   height: 50,
//     //   child: Text("Error found"),
//     // );
//     //
//
//   }
//
//
//   BannerAdListener  adListener(){
//     return  _adListener;
//   }
//
//   final BannerAdListener _adListener = BannerAdListener(
//
//     onAdLoaded: (Ad ad) => print('Ad loaded.'),
//     onAdFailedToLoad: (Ad ad, LoadAdError error) {
//       ad.dispose();
//       print('Ad failed to load: $error');
//     },
//     // Called when an ad opens an overlay that covers the screen.
//     onAdOpened: (Ad ad) => print('Ad opened.'),
//     // Called when an ad removes an overlay that covers the screen.
//     onAdClosed: (Ad ad) => print('Ad closed.'),
//     // Called when an impression occurs on the ad.
//     onAdImpression: (Ad ad) => print('Ad impression.'),
//   );
//
//   String get appId {
//     if (Platform.isAndroid) {
//       return "ca-app-pub-3237644024612902~7640552803";
//     } else {
//       throw UnsupportedError("Unsupported platform");
//     }
//   }
//
// }
//
//
//
//
// // void BannerAds(AdsManager adManager,String unitId,) {
// //       BannerAd(
// //         adUnitId: unitId,
// //         size: AdSize.largeBanner,
// //         request: AdRequest(),
// //         listener: BannerAdListener(
// //           onAdLoaded: (_) {
// //           },
// //           onAdFailedToLoad: (Ad ad, LoadAdError error) {
// //             //ad.dispose();
// //             print('Ad failed to load: $error');
// //           },
// //         ),
// //       );
// //   _BannerAd4.load();
// //   showAd1();
// //
// // }
//
//
//
//
