import 'package:flutter/material.dart';
import '../main.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: false,
    scaffoldBackgroundColor: Colors.white,
    primaryColor: appStore.primaryColors,
    hoverColor: Colors.grey,
    fontFamily: 'Tajawal', // ←← هنا أصبح الخط الجديد
    appBarTheme: AppBarTheme(
      color: appStore.primaryColors,
    ),
    iconTheme: IconThemeData(color: Colors.black),
    cardTheme: CardThemeData(color: Colors.white),
  ).copyWith(
    pageTransitionsTheme: PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
        TargetPlatform.linux: OpenUpwardsPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    useMaterial3: false,
    scaffoldBackgroundColor: Color(0xFF131d25),
    primaryColor: appStore.primaryColors,
    fontFamily: 'Tajawal', // ←← الخط الجديد أيضاً هنا
    appBarTheme: AppBarTheme(
      color: appStore.primaryColors,
    ),
    cardTheme: CardThemeData(color: Color(0xFF1D2939)),
    iconTheme: IconThemeData(color: Colors.white70),
  ).copyWith(
    pageTransitionsTheme: PageTransitionsTheme(
      builders: <TargetPlatform, PageTransitionsBuilder>{
        TargetPlatform.android: OpenUpwardsPageTransitionsBuilder(),
        TargetPlatform.linux: OpenUpwardsPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
  );
}
