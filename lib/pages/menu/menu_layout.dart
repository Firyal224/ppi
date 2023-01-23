import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:signal_tv_digital/pages/Component/bottom_navigation.dart';
import 'package:signal_tv_digital/pages/Component/appbar.dart';
import 'package:signal_tv_digital/pages/Component/card_news.dart';
import 'package:signal_tv_digital/pages/Component/detect_button.dart';
class MenuLayout extends StatefulWidget {
  const MenuLayout({super.key});

  @override
  State<MenuLayout> createState() => _MenuLayoutState();
}

class _MenuLayoutState extends State<MenuLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarComponent(),
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 290.h,
                color: const Color(0xffF7FAFC),
                child: Padding(
                  padding: EdgeInsets.only(top:35.h,left:15.h,right:15.h),
                  child: Center(
                     child:  Column(
                       children: [
                          Row(
                           children: [
                              Column(
                                children: [
                                  Container(
                                    height: 70.h,
                                    width: 70.h,
                                    decoration: BoxDecoration(
                                      color: const Color(0xff111F41).withOpacity(0.10),
                                      borderRadius: BorderRadius.circular(28.h)
                                      
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(16.h),
                                      child: SvgPicture.asset('assets/iconsignalMenu.svg', height: 32.h,color: const Color(0xff111F41)),
                                    )
                                  ),
                                  
                                  Padding(
                                    padding: EdgeInsets.only(top:9.h),
                                    child: Text("Data Mux", style: TextStyle(
                                      fontSize: 11.h, 
                                      fontWeight: FontWeight.w500, 
                                      color: const Color(0xff111F41),
                                    )),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(left:15.h),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 70.h,
                                      width: 70.h,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff111F41).withOpacity(0.10),
                                        borderRadius: BorderRadius.circular(28.h)
                                        
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(16.h),
                                        child: SvgPicture.asset('assets/iconDataLokasi.svg', height: 32.h,color: const Color(0xff111F41)),
                                      )
                                    ),
                                    
                                    Padding(
                                      padding: EdgeInsets.only(top:9.h),
                                      child: Text("Data Lokasi", style: TextStyle(
                                        fontSize: 11.h, 
                                        fontWeight: FontWeight.w500, 
                                        color: const Color(0xff111F41),
                                      )),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left:15.h),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 70.h,
                                      width: 70.h,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff111F41).withOpacity(0.10),
                                        borderRadius: BorderRadius.circular(28.h)
                                        
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(16.h),
                                        child: SvgPicture.asset('assets/iconPerangkat.svg', height: 32.h,color: const Color(0xff111F41)),
                                      )
                                    ),
                                    
                                    Padding(
                                      padding: EdgeInsets.only(top:9.h),
                                      child: Text("Perangkat STB", style: TextStyle(
                                        fontSize: 11.h, 
                                        fontWeight: FontWeight.w500, 
                                        color: const Color(0xff111F41),
                                      )),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left:15.h),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 70.h,
                                      width: 70.h,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff111F41).withOpacity(0.10),
                                        borderRadius: BorderRadius.circular(28.h)
                                        
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(16.h),
                                        child: SvgPicture.asset('assets/iconAcara.svg', height: 32.h,color: const Color(0xff111F41)),
                                      )
                                    ),
                                    
                                    Padding(
                                      padding: EdgeInsets.only(top:9.h),
                                      child: Text("Jadwal Acara", style: TextStyle(
                                        fontSize: 11.h, 
                                        fontWeight: FontWeight.w500, 
                                        color: const Color(0xff111F41),
                                      )),
                                    ),
                                  ],
                                ),
                              ),
                           ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(top:28.h),
                            child: Row(
                             children: [
                                Column(
                                  children: [
                                    Container(
                                      height: 70.h,
                                      width: 70.h,
                                      decoration: BoxDecoration(
                                        color: const Color(0xff111F41).withOpacity(0.10),
                                        borderRadius: BorderRadius.circular(28.h)
                                        
                                      ),
                                      child: Padding(
                                        padding: EdgeInsets.all(16.h),
                                        child: SvgPicture.asset('assets/iconDisclaimer.svg', height: 32.h,color: const Color(0xff111F41)),
                                      )
                                    ),
                                    
                                    Padding(
                                      padding: EdgeInsets.only(top:9.h),
                                      child: Text("Disclaimer", style: TextStyle(
                                        fontSize: 11.h, 
                                        fontWeight: FontWeight.w500, 
                                        color: const Color(0xff111F41),
                                      )),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left:15.h),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 70.h,
                                        width: 70.h,
                                        decoration: BoxDecoration(
                                          color: const Color(0xff111F41).withOpacity(0.10),
                                          borderRadius: BorderRadius.circular(28.h)
                                          
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.h),
                                          child: SvgPicture.asset('assets/iconFaceAgent.svg', height: 32.h,color: const Color(0xff111F41)),
                                        )
                                      ),
                                      
                                      Padding(
                                        padding: EdgeInsets.only(top:9.h),
                                        child: Text("Bantuan", style: TextStyle(
                                          fontSize: 11.h, 
                                          fontWeight: FontWeight.w500, 
                                          color: const Color(0xff111F41),
                                        )),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left:15.h),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 70.h,
                                        width: 70.h,
                                        decoration: BoxDecoration(
                                          color: const Color(0xff111F41).withOpacity(0.10),
                                          borderRadius: BorderRadius.circular(28.h)
                                          
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.h),
                                          child: SvgPicture.asset('assets/iconPanduan.svg', height: 32.h,color: const Color(0xff111F41)),
                                        )
                                      ),
                                      
                                      Padding(
                                        padding: EdgeInsets.only(top:9.h),
                                        child: Text("Panduan", style: TextStyle(
                                          fontSize: 11.h, 
                                          fontWeight: FontWeight.w500, 
                                          color: const Color(0xff111F41),
                                        )),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left:15.h),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 70.h,
                                        width: 70.h,
                                        decoration: BoxDecoration(
                                          color: const Color(0xff111F41).withOpacity(0.10),
                                          borderRadius: BorderRadius.circular(28.h)
                                          
                                        ),
                                        child: Padding(
                                          padding: EdgeInsets.all(16.h),
                                          child: SvgPicture.asset('assets/iconFaq.svg', height: 32.h,color: const Color(0xff111F41)),
                                        )
                                      ),
                                      
                                      Padding(
                                        padding: EdgeInsets.only(top:9.h),
                                        child: Text("FAQ", style: TextStyle(
                                          fontSize: 11.h, 
                                          fontWeight: FontWeight.w500, 
                                          color: const Color(0xff111F41),
                                        )),
                                      ),
                                    ],
                                  ),
                                ),
                             ],
                            ),
                          ),
                       ],
                     ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left:15.h,right:15.h,top:18.h),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      Center(
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 117.h,
                            height: 3.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.h),
                              color: const Color(0xffEAEAEA),
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right:12.h,top:20.h),
                            child: Text("Breaking News", style: TextStyle(
                              fontSize: 15.h, 
                              fontWeight: FontWeight.w600, 
                              color: const Color(0xff1B2E5A),
                            )),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left:100.h, top:20),
                            child: Row(
                              children: [
                                Text("Berita Lengkap", style: TextStyle(
                                  fontSize: 12.h, 
                                  fontWeight: FontWeight.w400, 
                                  color: Colors.black,
                                )),
                                Image.asset('assets/iconarrowright.png',width: 15.h,height: 15.h,)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              /// For Card News
              const CardNews(), 
              Padding(
                padding: EdgeInsets.only(left:12.h,top:0),
                child: Text("Another Section Menus", style: TextStyle(
                  fontSize: 15.h, 
                  fontWeight: FontWeight.w600, 
                  color: const Color(0xff1B2E5A),
                )),
              ),
              const CardNews(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavigation(),
      floatingActionButton: const DetectButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}