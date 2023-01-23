import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:signal_tv_digital/pages/Component/detect_button.dart';
import 'package:signal_tv_digital/pages/Component/bottom_navigation.dart';
import 'package:signal_tv_digital/pages/search/no_content_here.dart';
import 'package:signal_tv_digital/pages/search/search.dart';

class SearchLayout extends StatefulWidget {
  const SearchLayout({super.key});

  @override
  State<SearchLayout> createState() => _SearchLayoutState();
}

class _SearchLayoutState extends State<SearchLayout> {
  @override
  Widget build(BuildContext context) {
    var top = MediaQuery.of(context).padding.top;

    return Scaffold(
      floatingActionButton: const DetectButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomNavigation(),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Center(
                child: NoContentHere(),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(
              vertical: top.h,
            ),
            child: const Search(),
          ),
        ],
      ),
    );
  }
}