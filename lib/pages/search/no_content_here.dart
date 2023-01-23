import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class NoContentHere extends StatefulWidget {
  const NoContentHere({super.key});

  @override
  State<NoContentHere> createState() => _NoContentHereState();
}

class _NoContentHereState extends State<NoContentHere> {
  @override
  Widget build(BuildContext context) {
    var top = MediaQuery.of(context).padding.top;
    var left = MediaQuery.of(context).padding.left;
    var right = MediaQuery.of(context).padding.right;

    return Padding(
      padding: EdgeInsets.all((top * .5 + right + left).h),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 14.h),
            child: SvgPicture.asset(
              'assets/search/No Content Here.svg',
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 10.h),
            child: Text('No Content Here!', textAlign: TextAlign.center, style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.sp,
            )),
          ),
          const Text('Try to typing the location you are looking for in the search field', textAlign: TextAlign.center),
        ],
      ),
    );
  }
}