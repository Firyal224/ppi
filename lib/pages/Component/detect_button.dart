import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DetectButton extends StatefulWidget {
  const DetectButton({super.key});

  @override
  State<DetectButton> createState() => _DetectButtonState();
}

class _DetectButtonState extends State<DetectButton> {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        foregroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
      ),
      onPressed: () {
        final current = ModalRoute.of(context)!.settings.name;

        if (current != '/') {
          Navigator.of(context).popUntil((route) {
            return route.settings.name == '/';
          });
        }
      },
      child: FittedBox(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.h),
              child: Container(
                height: 70.h,
                width: 70.h,
                decoration: BoxDecoration(
                  color: const Color(0xff0E66E8),
                  borderRadius: BorderRadius.circular(20.h)
                ),
                child: Padding(
                  padding: EdgeInsets.all(14.h),
                  child: SvgPicture.asset('assets/detectIcon.svg', height: 26.sp),
                ),
              ),
            ),
            Text(
              "Detect",
              style: TextStyle(
                fontSize: 12.sp,
                color:  const Color(0xff090946),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}