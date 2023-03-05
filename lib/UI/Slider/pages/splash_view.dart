import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashView extends StatefulWidget {
  final AnimationController animationController;

  const SplashView({Key? key, required this.animationController})
      : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    final _introductionanimation =
        Tween<Offset>(begin: Offset(0, 0), end: Offset(0.0, -1.0))
            .animate(CurvedAnimation(
      parent: widget.animationController,
      curve: Interval(
        0.0,
        0.2,
        curve: Curves.fastOutSlowIn,
      ),
    ));
    return Container(
      height: h,
      margin: EdgeInsets.only(top: h/4),
      child: SlideTransition(
        position: _introductionanimation,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: w/2,
                child: Image.asset(
                  'Assets/images/playstore.png',
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.0.h, bottom: 8.0.h),
                child: Text(
                  "Welcome",
                  style: TextStyle(fontSize: 25.0.sp, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 64.w, right: 64.w),
                child: Text(
                  "World Live news, Lets know whats happening around you!",
                  textAlign: TextAlign.center,
                  style:  GoogleFonts.almarai(
                    textStyle:TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.black
                    ),
                  ),

                ),
              ),
              SizedBox(
                height: 48.h,
              ),
              Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).padding.bottom + 16),
                child: InkWell(
                  onTap: () {
                    widget.animationController.animateTo(0.2);
                  },
                  child: Container(
                    height: 58.h,
                    padding: EdgeInsets.only(
                      left: 56.0.w,
                      right: 56.0.w,
                      top: 16.h,
                      bottom: 16.h,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(38.0.r),
                      color: Color(0xff132137),
                    ),
                    child: Text(
                      "Let's begin",
                      style: TextStyle(
                        fontSize: 18.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
