import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:signal_tv_digital/pages/map/map_layout.dart';
import 'package:signal_tv_digital/pages/search/search_layout.dart';
import 'package:signal_tv_digital/pages/menu/menu_layout.dart';
import 'package:signal_tv_digital/providers/map_provider.dart';
import 'package:signal_tv_digital/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ListenableProvider(
          create: (context) => MapProvider(),
        ),
      ],
      builder: (context, child) => ScreenUtilInit(
        designSize: const Size(540, 1175),
        builder: (context, child) => MaterialApp(
          title: 'Signal TV Digital',
          theme: theme,
          initialRoute: '/',
          routes: {
            '/': (context) => const MapLayout(),
            '/search': (context) => const SearchLayout(),
            '/menu': (context) => const MenuLayout(),
          },
        ),
      ),
    );
  }
}
