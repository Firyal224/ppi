import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardNews extends StatelessWidget {
  const CardNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.h),
      child: Container(
        height: 270,
        width: 400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.h),
          image: const DecorationImage(
            image: AssetImage("assets/image_bi.png")
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(top: 160.h, left: 20.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Rabu 17 Agustus 2022, 14:20 WIB", style: TextStyle(
                fontSize: 16.sp, 
                fontWeight: FontWeight.w400, 
                color: Colors.white,
              )),
              Text("Merajut Pembayaran Lintas Negara", style: TextStyle(
                fontSize: 20.sp, 
                fontWeight: FontWeight.bold, 
                color: Colors.white,
              )),
              SizedBox(height: 7.h),
              Text("Adhi Nugroho, Analis Bank Indonesia Kalimantan Selatan | Opini", style: TextStyle(
                fontSize: 14.sp, 
                fontWeight: FontWeight.w300, 
                color: Colors.white, 
                fontStyle: FontStyle.italic,
              )),
            ],
          ),
        ),
      ),
    );
  }
}