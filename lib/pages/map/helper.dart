import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Helper extends StatefulWidget {
  const Helper({super.key, required this.children});

  final List<Widget> children;

  @override
  State<Helper> createState() => _HelperState();
}

class _HelperState extends State<Helper> {
  @override
  Widget build(BuildContext context) {
    var top = MediaQuery.of(context).padding.top;

    return Positioned(
      top: (top + 20 + 85).h,
      right: 30.h,
      child: Column(
        children: widget.children,
      ),
    );
  }
}