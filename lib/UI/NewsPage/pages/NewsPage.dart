import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newsapi/AdsManager.dart';
import 'package:newsapi/Core/Functions/Fucntions.dart';
import 'package:newsapi/Injection.dart';
import 'package:newsapi/UI/NewsPage/bloc/NewsPage_Event.dart';
import 'package:newsapi/UI/NewsPage/pages/NewsPage.dart';
import 'package:intl/intl.dart';
import 'package:newsapi/UI/NewsPage/bloc/NewsPage_Bloc.dart';
import 'package:newsapi/UI/NewsPage/bloc/NewsPage_State.dart';
import 'package:url_launcher/url_launcher.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';

String country = "";
String category = "";

class NewsPage extends StatefulWidget {
  NewsPage(this.category, this.Country_Code);

  String Country_Code = "";
  String category = "";

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  // final Adsinstance = AdsManager();
  // BannerAd? _BannerAd1;
  // BannerAd? _BannerAd2;
  // BannerAd? _BannerAd3;
  // BannerAd? _BannerAd4;
  //AdsManager? adManager;
  final _NewsPageBloc = sl<NewsPageBloc>();

  @override
  void initState() {
    _NewsPageBloc.add(GetNews((b) => b
      ..Category = widget.category
      ..Country_Code = widget.Country_Code));
    super.initState();
  }

  _launchURL(String url) async {
    try {
      await launch(url);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return BlocBuilder(
        bloc: _NewsPageBloc,
        builder: (BuildContext context, NewsPageState state) {
          return Scaffold(
            // bottomNavigationBar: Adsinstance.getbanner( "ca-app-pub-3237644024612902/2174325900",_BannerAd1, false),
            appBar: AppBar(
              backgroundColor: Colors.black87,
              title: Text("News"),
            ),
            body: state.success!
                ? state.GetNews!.articles!.length==0
                ? Container(
              child: Center(
                child: Text(
                  "This Country or Category is not supported"
                ),
              ),
            )
                :Container(
                width: w,
                height: h * 2,
                child: ListView.builder(
                    itemCount: state.GetNews!.articles!.length,
                    itemBuilder: (context, index) {
                      var article = state.GetNews!.articles![index];
                      var formattedTime = DateFormat('dd MMM - HH:mm')
                          .format(DateTime.parse(article.publishedAt!));
                      print(article);

                      return Column(
                        children: [
                          InkWell(
                            onTap: () async {
                              article.url!=null && article.url!="" ? await _launchURL(article.url.toString()):print("no url");
                              print("no url");
                            },
                            child: Container(
                              height: 100.h,
                              margin: EdgeInsets.all(8.w),
                              child: Row(
                                children: <Widget>[
                                  Card(
                                    clipBehavior: Clip.antiAlias,
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadius.circular(24.r),
                                    ),
                                    child: AspectRatio(
                                        aspectRatio: 1,
                                        child: Image.network(
                                          state.GetNews!.articles![index]
                                              .urlToImage
                                              .toString(),
                                          fit: BoxFit.cover,
                                          errorBuilder:
                                              (BuildContext? context,
                                              Object? exception,
                                              StackTrace? stackTrace) {
                                            return Icon(
                                                Icons.do_not_disturb);
                                          },
                                        )),
                                  ),
                                  SizedBox(width: 16),
                                  Flexible(
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(formattedTime),
                                        Text(
                                          article.title != null &&
                                              article.title != ""
                                              ? article.title!
                                              : "No Title",
                                          overflow: TextOverflow.ellipsis,
                                          //makes three dots if there is no space
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          article.description != null &&
                                              article.description != ""
                                              ? article.description!
                                              : "No description",
                                          maxLines: 2,
                                          overflow: TextOverflow
                                              .ellipsis, //three dots if there is no space
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      );
                    }))
                : state.isLoading!
                    ? Container(
                        padding: EdgeInsets.only(left: 10.w),
                        width: w,
                        height: h / 3.5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(child: listLoader(context: context)),
                          ],
                        ))
                    : Center(
                        child: Text("Waiting..."),
                      ),
          );
        });
  }
}

//------- AdMobAds -----------

//   @override
//   void didChangeDependencies() {
//     super.didChangeDependencies();
// //------- AdMobAds -----------
//     adManager = Provider.of<AdsManager>(context);
//     adManager.initialization.then((value) {
//       getBottomBannerAd(adManager);
//     });
//     //------- AdMobAds -----------
//   }
