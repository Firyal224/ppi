import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  const AppBarComponent({super.key});
  
  @override
  Size get preferredSize => Size.fromHeight(80.h);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xff1B2E5A),
      centerTitle: true,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/logoSignalTv.png', width: 30.h, height: 30.h),
          Padding(
            padding: EdgeInsets.only(left: 10.h),
            child: Text("Sinyal TV Digital", style: TextStyle(fontSize: 20.sp, 
              fontWeight: FontWeight.w700, 
              color: Colors.white
            )),
          ),
        ],
      ),
    );
  }
}
