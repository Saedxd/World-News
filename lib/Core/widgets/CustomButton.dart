// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
//
// class CustomButton extends StatefulWidget {
//    const CustomButton({Key? key,
//      required this.onPressed,
//      required this.btnColor,
//      required this.TxtColor,
//      required this.SocialName,
//      required this.ButtonText,
//      this.SocialImage,
//      this.FontFamilySocial,
//      required this.fontsize,
//      required this.weight,
//    }) : super(key: key);
//
//    final String ButtonText;
//    final VoidCallback? onPressed;
//    final Color? btnColor;
//    final Color? TxtColor;
//    final String? SocialName;
//    final String? SocialImage;
//    final String? FontFamilySocial;
//    final FontWeight? weight;
//    final double? fontsize;
//
//   @override
//   State<CustomButton> createState() => _CustomButtonState();
// }
//
// class _CustomButtonState extends State<CustomButton> {
//   @override
//   Widget build(BuildContext context) {
//     TextTheme _TextTheme = Theme.of(context).textTheme;
//     ColorScheme ColorS = Theme.of(context).colorScheme;
//     var h = MediaQuery.of(context).size.height;
//     var w = MediaQuery.of(context).size.width;
//
//     return InkWell(
//         onTap: widget.onPressed!,
//         child: Container(
//             width: w / 1.32,
//             height: h / 13.9,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(5.r),
//                 topRight: Radius.circular(5.r),
//                 bottomLeft: Radius.circular(5.r),
//                 bottomRight: Radius.circular(5.r),
//               ),
//                 boxShadow: [
//                   BoxShadow(
//                       color: Color.fromRGBO(   0, 0, 0, 0.25),
//                       offset: Offset(0, 0),
//                       blurRadius: 9)
//                 ],
//               color: widget.btnColor
//             ),
//             child: Center(
//               child:
//                   widget.SocialName=="null"?
//                   Text(
//                     widget.ButtonText,
//                     textAlign: TextAlign.center,
//                     style: _TextTheme.headline1!.copyWith(
//                         fontSize: widget.fontsize,
//                         fontWeight: widget.weight,
//                          color: widget.TxtColor
//                        ),
//                   ):Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       SvgPicture.asset(
//                         widget.SocialImage!,
//                         width: 20.w,
//                       ),
//                       Container(
//                         margin: EdgeInsets.only( left: 11.w, top: 2.h),
//                         child: Text(
//                           widget.ButtonText,
//                           textAlign: TextAlign.left,
//                           style: TextStyle(
//                               color: widget.TxtColor,
//                               fontFamily: widget.FontFamilySocial,
//                               fontSize: widget.fontsize,
//                               letterSpacing: 0.5,
//                               fontWeight: widget.weight,
//                               height: 1.h
//                           ),
//                         ),
//                       ),
//                     ],
//                   )
//
//
//             )),);
//   }
// }
