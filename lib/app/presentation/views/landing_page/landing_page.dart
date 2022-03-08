import 'package:chatly/app/config/config.dart';
import 'package:flutter/material.dart';

class LandingPage01 extends StatelessWidget {
  const LandingPage01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveView(
        tablet: Container(),
        mobile: Container(),
        desktop: Container(),
      ),
    );
  }
}
