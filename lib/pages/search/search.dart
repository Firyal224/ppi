import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var left = MediaQuery.of(context).padding.left;
    var right = MediaQuery.of(context).padding.right;

    return Container(
      width: width - left - right,
      height: 85.h,
      padding: EdgeInsets.symmetric(
        vertical: 10.h,
        horizontal: 30.h,
      ),
      child: Container(
        padding: EdgeInsets.all(10.h),
        decoration: BoxDecoration(
          color: Color.fromRGBO(
            Colors.grey.shade200.red, 
            Colors.grey.shade200.green, 
            Colors.grey.shade200.blue, 
            .75,
          ),
          borderRadius: BorderRadius.circular(8.h),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9999),
                ),
                padding: EdgeInsets.zero,
                minimumSize: Size(40.h, 40.h),
              ),
              onPressed: () => Navigator.of(context).pop(),
              child: const Icon(Icons.arrow_circle_left_outlined),
            ),
            Flexible(
              child: TextField(
                autofocus: true,
                controller: controller,
                style: TextStyle(
                  fontSize: 18.sp,
                ),
                decoration: InputDecoration(
                  isDense: true,
                  hintText: 'Search',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(
                    left: 10.h,
                    top: 0,
                    right: 0,
                    bottom: 0,
                  ),
                  hintStyle: TextStyle(
                    fontSize: 18.sp,
                  ),
                ),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(9999),
                ),
                padding: EdgeInsets.zero,
                minimumSize: Size(40.h, 40.h),
              ),
              onPressed: () {},
              child: const Icon(Icons.search),
            ),
          ],
        ),
      ),
    );
  }
}