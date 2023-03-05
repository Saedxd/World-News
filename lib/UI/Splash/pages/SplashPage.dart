import 'package:flutter/material.dart';
import 'package:newsapi/Data/prefs_helper/iprefs_helper.dart';
import 'package:newsapi/Injection.dart';
import 'package:newsapi/UI/HomePage/pages/HomePage.dart';
import 'package:newsapi/UI/Slider/introduction_animation_screen.dart';
import 'package:newsapi/UI/Slider/pages/splash_view.dart';


class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash>  with TickerProviderStateMixin{
  AnimationController? _animationController;

  final pref = sl<IPrefsHelper>();
  Future<void> SetNotFirstTime() async {
    await pref.SetNOTnewUser();
  }
  bool islogedin = false;
  Future<void> GetISloggedIN() async {
    islogedin = await pref.GetIsNewUser();
  }
  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  void delay() {
    Future.delayed(Duration(milliseconds: 5000), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) =>islogedin?
              IntroductionAnimationScreen():Home(),
        ),
      );
    });
    SetNotFirstTime();
  }

  @override
  void initState() {
    GetISloggedIN();
    delay();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 8));
    _animationController?.animateTo(0.0);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff0B0D39),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        Center(
          child: Container(
            width: w/1.2,
            child:   Image.asset("Assets/images/playstore.png"),
          ),
        )
        ],
      ),
    );
  }
}
