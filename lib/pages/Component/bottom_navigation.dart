import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  final int _selectedIndex = 0;
  final items = [
    {
      'icon': 'assets/iconMenu.svg',
      'label': 'Menu',
      'go': '/menu',
    },
    {
      'icon': 'assets/iconsignalMenu.svg',
      'label': 'Mux List',
      'go': '/mux-list',
    },
    {
      'icon': null,
      'label': null,
      'go': null,
    },
    {
      'icon': 'assets/iconChannel.svg',
      'label': 'Channel',
      'go': '/channel',
    },
    {
      'icon': 'assets/iconBantuan.svg',
      'label': 'Bantuan',
      'go': '/help',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      unselectedFontSize: 13.sp,
      unselectedItemColor: const Color(0xff090946),
      unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      items: items.map((item) {
        if (item['label'] == null) {
          return const BottomNavigationBarItem(
            icon: SizedBox(),
            label: '',
          );
        }

        return BottomNavigationBarItem(
          icon: Padding(
            padding: EdgeInsets.symmetric(vertical: 5.h),
            child: SvgPicture.asset(item['icon']!, height: 26.h),
          ),
          label: item['label']!,
        );
      }).toList(),
      currentIndex: _selectedIndex,
      selectedItemColor: const Color(0xff090946),
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      onTap: (value) {
        final go = items[value]['go'];

        if (go is String) {
          Navigator.of(context).pushNamed(go);
        }
      },
    );
  }
}
