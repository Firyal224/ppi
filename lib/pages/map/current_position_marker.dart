import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CurrentPositionMarker extends StatefulWidget {
  const CurrentPositionMarker({super.key});

  @override
  State<CurrentPositionMarker> createState() => _CurrentPositionMarkerState();
}

class _CurrentPositionMarkerState extends State<CurrentPositionMarker> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(9999.h),
      ),
      child: const Icon(
        Icons.location_on,
        color: Colors.red,
      ),
    );
  }
}
