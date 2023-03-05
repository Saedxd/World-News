import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CenterNextButton extends StatelessWidget {
  final AnimationController animationController;
  final VoidCallback onNextClick;
  const CenterNextButton(
      {Key? key, required this.animationController, required this.onNextClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _topMoveAnimation =
        Tween<Offset>(begin: Offset(0, 5), end: Offset(0, 0))
            .animate(CurvedAnimation(
      parent: animationController,
      curve: Interval(
        0.0,
        0.2,
        curve: Curves.fastOutSlowIn,
      ),
    ));
    final _signUpMoveAnimation =
        Tween<double>(begin: 0, end: 1.0).animate(CurvedAnimation(
      parent: animationController,
      curve: Interval(
        0.6,
        0.8,
        curve: Curves.fastOutSlowIn,
      ),
    ));
    final _loginTextMoveAnimation =
        Tween<Offset>(begin: Offset(0, 5), end: Offset(0, 0))
            .animate(CurvedAnimation(
      parent: animationController,
      curve: Interval(
        0.6,
        0.8,
        curve: Curves.fastOutSlowIn,
      ),
    ));

    return Padding(
      padding:
          EdgeInsets.only(bottom: 16.h + MediaQuery.of(context).padding.bottom),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SlideTransition(
            position: _topMoveAnimation,
            child: AnimatedBuilder(
              animation: animationController,
              builder: (context, child) => AnimatedOpacity(
                opacity: animationController.value >= 0.2 &&
                        animationController.value <= 0.6
                    ? 1
                    : 0,
                duration: Duration(milliseconds: 480),
                child: _pageView(),
              ),
            ),
          ),
          Center(
            child: SlideTransition(
              position: _topMoveAnimation,
              child: AnimatedBuilder(
                animation: animationController,
                builder: (context, child) => Padding(
                  padding: EdgeInsets.only(
                      bottom: 38.h - (38 * _signUpMoveAnimation.value).h),
                  child: Container(
                    height: 58.h,
                    width: 58.w + (200 * _signUpMoveAnimation.value).w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          8.r + 32 * (1 - _signUpMoveAnimation.value).r),
                      color: Color(0xff132137),
                    ),
                    child: PageTransitionSwitcher(
                      duration: Duration(milliseconds: 480),
                      reverse: _signUpMoveAnimation.value < 0.7,
                      transitionBuilder: (
                          Widget child,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation,
                          ) {
                        return SharedAxisTransition(
                          fillColor: Colors.transparent,
                          child: child,
                          animation: animation,
                          secondaryAnimation: secondaryAnimation,
                          transitionType: SharedAxisTransitionType.vertical,
                        );
                      },
                      child: _signUpMoveAnimation.value > 0.7
                          ? InkWell(
                        key: ValueKey('Sign Up button'),
                        onTap: onNextClick,
                        child: Padding(
                          padding: EdgeInsets.only(left: 16.0.w, right: 16.0.w),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'OKAY',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Icon(Icons.arrow_forward_rounded,
                                  color: Colors.white),
                            ],
                          ),
                        ),
                      )
                          : InkWell(
                        key: ValueKey('next button'),
                        onTap: onNextClick,
                        child: Padding(
                          padding: EdgeInsets.all(16.0.w),
                          child: Icon(Icons.arrow_forward_ios_rounded,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          )

        ],
      ),
    );
  }

  Widget _pageView() {
    int _selectedIndex = 0;

    if (animationController.value >= 0.7) {
      _selectedIndex = 3;
    } else if (animationController.value >= 0.5) {
      _selectedIndex = 2;
    } else if (animationController.value >= 0.3) {
      _selectedIndex = 1;
    } else if (animationController.value >= 0.1) {
      _selectedIndex = 0;
    }

    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (var i = 0; i < 4; i++)
            Padding(
              padding: EdgeInsets.all(4.w),
              child: AnimatedContainer(
                duration: Duration(milliseconds: 480),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32.r),
                  color: _selectedIndex == i
                      ? Color(0xff132137)
                      : Color(0xffE3E4E4),
                ),
                width: 10.w,
                height: 10.h,
              ),
            )
        ],
      ),
    );
  }
}
