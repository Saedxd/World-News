import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:awesome_dropdown/awesome_dropdown.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newsapi/Injection.dart';
import 'package:newsapi/UI/HomePage/bloc/HomePage_Bloc.dart';
import 'package:newsapi/UI/HomePage/bloc/HomePage_Event.dart';
import 'package:newsapi/UI/HomePage/bloc/HomePage_State.dart';
// import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:newsapi/UI/HomePage/pages/HomePage.dart';
import 'package:newsapi/UI/NewsPage/pages/NewsPage.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
class Home extends StatefulWidget {
  String Country = '';
  String category = '';
  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {
  // final instance = API_Manager();
  // final Adsinstance = AdsManager();
  // BannerAd? _BannerAd1;
  // BannerAd? _BannerAd2;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();



  List<String> itemS2 = [ "business","entertainment","general", "health",  "science" ,"sports", "technology" ];

  final _HomePageBloc= sl<HomePageBloc>();


String _selectedItem2 ="";
  @override
  void initState() {

    _selectedItem2 = 'Select category';
    super.initState();
  }
String Country_Code="";

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return  BlocBuilder(
        bloc: _HomePageBloc,
        builder: (BuildContext context, HomePageState state){
          return Scaffold(
            backgroundColor: Color(0xFF2D2C3C),
            key: _scaffoldKey,

            body: Container(
              margin: EdgeInsets.only(top: 20.h),
              child: Column(
                children: [
                  Container(
                    height: h/5,
                    child:
                    Center(
                      child: Text("Live News",
                        style: TextStyle(
                            color: Colors.black54,
                            fontSize: 28.sp,
                            fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: h/1.5,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Theme(
                                  data: ThemeData(
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                  ),
                                  child :
                                  InkWell(
                                    onTap: (){

                                      showCountryPicker(
                                        context: context,
                                        countryListTheme: CountryListThemeData(
                                          flagSize: 25.w,
                                          backgroundColor: Colors.white,
                                          textStyle: TextStyle(fontSize: 16, color: Colors.blueGrey),
                                          bottomSheetHeight: 500.h, // Optional. Country list modal height
                                          //Optional. Sets the border radius for the bottomsheet.
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20.0.r),
                                            topRight: Radius.circular(20.0.r),
                                          ),
                                          //Optional. Styles the search field.
                                          inputDecoration: InputDecoration(
                                            labelText: 'Search',
                                            hintText: 'Start typing to search',
                                            prefixIcon: const Icon(Icons.search),
                                            border: OutlineInputBorder(
                                              borderSide: BorderSide(
                                                color: const Color(0xFF8C98A8).withOpacity(0.2),
                                              ),
                                            ),
                                          ),
                                        ),

                                        onSelect: (Country country){
                                          //country
                                          Country_Code = country.countryCode;
                                          _HomePageBloc.add(ChangeSelectedItem((b) => b..Country = country.name));
                                        },
                                      );
                                    },
                                    child: Container(
                                      width: w/1.17,
                                      margin: EdgeInsets.only(top: 15.h, left: 16.w, right: 20.w),
                                      height: 55.h,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(50.r),
                                          topRight: Radius.circular(50.r),
                                          bottomRight: Radius.circular(50.r),
                                          bottomLeft: Radius.circular(50.r),
                                        ),
                                      ),
                                      child: Center(
                                        child: Text(
                                          state.Selected!?state.SelectedItem!:
                                          "Select Country",
                                          style:  GoogleFonts.almarai(
                                              textStyle:TextStyle(
                                                color: Colors.grey,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 22.sp,

                                              )
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),),

                                // Container(
                                //   width: MediaQuery.of(context).size.width,
                                //   margin: EdgeInsets.only(top: 15.h, left: 16.w, right: 20.w),
                                //   child: AwesomeDropDown(
                                //     isPanDown: _isPanDown,
                                //     dropDownList: itemS,
                                //     isBackPressedOrTouchedOutSide: _isBackPressedOrTouchedOutSide,
                                //     selectedItem: _selectedItem,
                                //     numOfListItemToShow: 50,
                                //
                                //
                                //     selectedItemTextStyle: GoogleFonts.almarai(
                                //         textStyle:TextStyle(
                                //       color: Colors.grey,
                                //       fontWeight: FontWeight.w500,
                                //       fontSize: 22.sp,
                                //
                                //     )
                                //     ),
                                //     dropDownListTextStyle: GoogleFonts.almarai(
                                //         textStyle:TextStyle(
                                //           color: Colors.grey,
                                //           fontWeight: FontWeight.w500,
                                //           fontSize: 19.sp,
                                //
                                //         ),
                                //     ),
                                //
                                //     onDropDownItemClick: (selectedItem) async{
                                //
                                //       _selectedItem = selectedItem;
                                //     },
                                //     dropStateChanged: (isOpened) {
                                //       _isDropDownOpened = isOpened;
                                //       if (!isOpened) {
                                //         _isBackPressedOrTouchedOutSide = false;
                                //       }
                                //     },
                                //   ),
                                // ),
                                SizedBox(height: 20.h,),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  margin: EdgeInsets.only(top: 15, left: 16, right: 20),
                                  child: AwesomeDropDown(
                                    dropDownList: itemS2,
                                    selectedItem: _selectedItem2,
                                    selectedItemTextStyle: GoogleFonts.almarai(
                                        textStyle:TextStyle(
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 22.sp,

                                        )
                                    ),
                                    dropDownListTextStyle: GoogleFonts.almarai(
                                      textStyle:TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 19.sp,

                                      ),
                                    ),
                                    onDropDownItemClick: (selectedItem) async{
                                      _selectedItem2 = selectedItem;

                                    },
                                    dropStateChanged: (isOpened2) {
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              if (_selectedItem2!="Select category" && state.Selected!){
                                Navigator.push(context,
                                  MaterialPageRoute(builder: (context) => NewsPage(_selectedItem2, Country_Code)),
                                );
                              }else{
                                Alert(context: context, title: "World News App alert", desc: "Please Choose Required Information").show();
                              }

                            },
                            child: Container(
                              width: w/1.3,
                              height: h/11,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(33.0.r),
                                // border: Border.all(width: 1.0, color: const Color(0xff707070)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.pink,
                                    offset: Offset(0, 1),
                                    blurRadius: 6.r,
                                  ),
                                ],
                              ),
                              child: Text("Let's see whats new!",
                                style: GoogleFonts.almarai(
                                  textStyle:TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black
                                  ),
                                ),
                              ),
                            ),
                          ),
                          // Container(
                          //   child: Column(
                          //     children: [
                          //       // Adsinstance.getbanner( "ca-app-pub-3237644024612902/7316624330",_BannerAd1, false),
                          //       // Adsinstance.getbanner( "ca-app-pub-3237644024612902/7565967975",_BannerAd2, false),
                          //     ],
                          //   ),
                          // ),


                        ],
                      ),
                  ),

                ],
              ),
            ),
          );}
    );
  }
  //
  // /// this func is used to close dropDown (if open) when you tap or pandown anywhere in the screen
  // void _removeFocus() {
  //   if (_isDropDownOpened) {
  //     setState(() {
  //       _isBackPressedOrTouchedOutSide = true;
  //       _isBackPressedOrTouchedOutSide2= true;
  //     });
  //   }
  // }
  //
  // /// this func will call on DrawerIconPressed, it closes the dropDown if open and then open the drawer
  // void _onDrawerBtnPressed() {
  //   if (_isDropDownOpened) {
  //     setState(() {
  //       _isBackPressedOrTouchedOutSide = true;
  //       _isBackPressedOrTouchedOutSide2 = true;
  //     });
  //   }
  //   else {
  //     _scaffoldKey.currentState?.openEndDrawer();
  //     FocusScope.of(context).requestFocus(FocusNode());
  //   }
  // }
}
// bottomNavigationBar: showAd(),

// PreferredSize(
//   preferredSize: AppBar().preferredSize,
//   child: SafeArea(
//     child: PreferredSize(
//         preferredSize: Size.fromHeight(100.0),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Container(
//               margin: EdgeInsets.only(left: 60),
//               child: Text('Live NEWS',
//                   style: TextStyle(
//                       color: Colors.black,
//                       fontSize: 22,
//                       fontWeight: FontWeight.bold)),
//             ),
//             Container(
//                 margin: EdgeInsets.only(right: 8),
//                 child: IconButton(
//                     icon: Icon(
//                       Icons.menu,
//                       size: 30,
//                       color: Colors.blueAccent,
//                     ),
//                     onPressed: () {
//                       _onDrawerBtnPressed();
//                     } //_onDrawerBtnPressed
//                 ))
//           ],
//         )),
//   ),
// ),
// endDrawer: Drawer(
//   child: ListView(
//     padding: EdgeInsets.zero,
//     children: <Widget>[
//       DrawerHeader(
//         child: Text('Drawer Header'),
//         decoration: BoxDecoration(
//           color: Colors.blue,
//         ),
//       ),
//       ListTile(
//         title: Text('Item 1'),
//         onTap: () {},
//       ),
//       ListTile(
//         title: Text('Item 2'),
//         onTap: () {},
//       ),
//     ],
//   ),
// ),  // Future<void> Getit()async{
//   //
//   //   //print(value);
//   //
//   //
//   // }//------- AdMobAds -----------
//
//
//   // List<String> items = [
//   //   //
//   //   'si',//Slovenia
//   //   'sk',//Slovakia
//   //   'th',//Thailand
//   //   'tr',//Turkey
//   //   'tw',//Taiwan
//   //   'ua',//Ukraine
//   //   'us',//United States of America
//   //   've',//Venezuela
//   //   'za',//Tanzania
//   //   'jp',//Japan
//   //   'kr',//South Korea
//   //   'lt',//Lithuania
//   //   'lv',//Latvia
//   //   'ma',//Morocco
//   //   'mx',//Mexico
//   //   'my',//Malaysia
//   //   'ng',//Nigeria
//   //   'nl',//Netherlands
//   //   'no',//Norway
//   //   'nz',//New Zealand
//   //   'ph',//Philippines
//   //   'pl',//Poland
//   //   'pt',//Portugal
//   //   'ro',//Romania
//   //   'rs',//Serbia
//   //   'ru',//Russian Federation
//   //   'sa',//Saudi Arabia
//   //   'se',//Sweden
//   //   'sg',//Singapore
//   //   'ae',//United Arab Emirates
//   //   'ar',//Argentina
//   //   'at',//Austria
//   //   'au',//Australia
//   //   'be',//Belgium
//   //   'bg',//Bulgaria
//   //   'br',//Brazil
//   //   'ca',//Canada
//   //   'ch',//Switzerland
//   //   'cn',//China
//   //   'co',//Colombia
//   //   'cu',//Cuba
//   //   'cz',//Czech rep.
//   //   'de',//Federal Republic of Germany
//   //   'eg',//Egypt
//   //   'fr',//France
//   //   'gb',//United Kingdom
//   //   'gr',//Greece
//   //   'hk',//Hong Kong
//   //   'hu',//Hungary
//   //   'id',//Indonesia
//   //   'ie',//reland
//   //   'il',//Israel
//   //   'in',//India
//   //   'it',//Italy
//   //
//   // ];