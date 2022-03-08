import 'package:chatly/app/presentation/theme/app_theme.dart';
import 'package:chatly/app/presentation/views/landing_page/landing_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Chatly());
}

class Chatly extends StatelessWidget {
  const Chatly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chatly',
      theme: appTheme,
      home: const LandingPage01(),
    );
  }
}
