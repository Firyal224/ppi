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
    var top = MediaQuery.of(context).padding.top;
    var right = MediaQuery.of(context).padding.right;

    return Positioned(
      top: (top + 20).h,
      child: Container(
        width: (width - left - right),
        height: 85.h,
        padding: EdgeInsets.symmetric(
          vertical: 10.h,
          horizontal: 30.h,
        ),
        child: Container(
          padding: EdgeInsets.all(10.h),
          decoration: BoxDecoration(
            color: Color.fromRGBO(
              Colors.white.red, 
              Colors.white.green, 
              Colors.white.blue, 
              .75,
            ),
            borderRadius: BorderRadius.circular(8.h),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Flexible(
                child: TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size(width.h, 80.h),
                    alignment: Alignment.centerLeft
                  ),
                  onPressed: () => Navigator.of(context).pushNamed('/search'),
                  child: const Text("Search"),
                ),
              ),
              TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(9999.h),
                  ),
                  padding: EdgeInsets.zero,
                  minimumSize: Size(40.h, 40.h),
                ),
                onPressed: () => Navigator.of(context).pushNamed('/search'),
                child: const Icon(Icons.search),
              ),
            ],
          ),
        ),
      ),
    );
  }
}