import 'package:chatly/app/presentation/resources/resources.dart';
import 'package:flutter/material.dart';

//the theme config employed in this app
ThemeData appTheme = ThemeData.dark().copyWith(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: black,
  primaryColor: white,
  textTheme: Typography.englishLike2018.apply(
    fontFamily: "Silka",
  ),
  secondaryHeaderColor: Colors.transparent,
  appBarTheme: const AppBarTheme(
    color: Colors.transparent,
    foregroundColor: white,
    elevation: 0.0,
    centerTitle: false,
    shadowColor: Colors.transparent,
  ),
  textSelectionTheme: const TextSelectionThemeData(
    cursorColor: white,
  ),
  visualDensity: VisualDensity.adaptivePlatformDensity,
);
