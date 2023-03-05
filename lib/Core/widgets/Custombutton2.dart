
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Button2 extends StatefulWidget {
   Button2({Key? key,required this.ButtonText,required this.Color}) : super(key: key);
  String ButtonText;
  String Color;
  @override
  State<Button2> createState() => _Button2State();
}

class _Button2State extends State<Button2> {
  @override
  Widget build(BuildContext context) {
    TextTheme _TextTheme = Theme.of(context).textTheme;
    ColorScheme ColorS = Theme.of(context).colorScheme;
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return  Container(
      width: w / 1.2,
      height: h / 13,
      padding: EdgeInsets.only(left:20.w ),
      decoration: BoxDecoration(
          boxShadow:[BoxShadow(
              blurRadius: 12.r
          )],
          color: Color(int.parse(widget.Color))
      ),
      child:Row(
        children: [
          Text(widget.ButtonText.toString(), textAlign: TextAlign.left, style: TextStyle(
              color: Color.fromRGBO(0, 0, 0, 1),
              fontFamily: 'Red Hat Text',
              fontSize: 20.sp,
              fontWeight: FontWeight.w400,
              height: 1.h
          ),),
        ],
      ),
    );
  }
}
