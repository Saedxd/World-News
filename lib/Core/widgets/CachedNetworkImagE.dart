import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageE extends StatefulWidget {
  ImageE({Key? key,this.image}) : super(key: key);
String? image;
  @override
  State<ImageE> createState() => _ImageEState();
}

class _ImageEState extends State<ImageE> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return CachedNetworkImage(
      imageUrl:widget.image.toString(),
      imageBuilder: (context, imageProvider) => Container(
        width: 125.w,
        height: 109.h,
        margin: EdgeInsets.only(left: w/500,right: w/500),
        decoration: BoxDecoration(
          borderRadius : BorderRadius.only(
            topLeft: Radius.circular(364.2384033203125.r),
            topRight: Radius.circular(364.2384033203125.r),
          ),
          image:DecorationImage(image:imageProvider,fit: BoxFit.fill),
        ),
      ),
      placeholder: (context, url) => Container(   width: 125.w,
          height: 109.h,child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
            ],
          )),
      errorWidget: (context, url, error) => Container(   width: 125.w,
          height: 109.h,child: Icon(Icons.error)),
    );
  }
}
