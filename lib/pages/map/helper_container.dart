import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HelperContainer extends StatefulWidget {
  const HelperContainer({super.key, required this.children});

  final List<Widget> children;

  @override
  State<HelperContainer> createState() => _HelperContainerState();
}

class _HelperContainerState extends State<HelperContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.h),
      decoration: BoxDecoration(
        color: Color.fromRGBO(
          Colors.white.red, 
          Colors.white.green, 
          Colors.white.blue, 
          .75,
        ),
        borderRadius: BorderRadius.circular(8.h),
      ),
      child: Column(
        children: widget.children,
      ),
    );
  }
}