import 'package:chatly/app/presentation/resources/resources.dart';
import 'package:flutter/material.dart';

//the theme config employed in this app
ThemeData appTheme = ThemeData.light().copyWith(
  brightness: Brightness.light,
  scaffoldBackgroundColor: black,
  dividerColor: const Color(0xFFCECECE),
  primaryColor: white,
  textTheme: Typography.englishLike2018.apply(
    bodyColor: white,
    fontFamily: "Silka",
  ),
  appBarTheme: const AppBarTheme(
    color: Colors.transparent,
    foregroundColor: white,
    elevation: 0,
    centerTitle: false,
    shadowColor: Colors.transparent,
  ),
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: white,
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
);
