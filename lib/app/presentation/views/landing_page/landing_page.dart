import 'package:chatly/app/config/config.dart';
import 'package:chatly/app/presentation/widgets.dart';
import 'package:flutter/material.dart';

class LandingPage01 extends StatelessWidget {
  const LandingPage01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ChatlyAppbar(),
      body: Stack(
        children: [
          // Positioned(
          //   child: AspectRatio(
          //     aspectRatio: 1,
          //     child: Image.asset(name),
          //   ),
          // ),
          ResponsiveView(
            tablet: Container(
              color: Colors.red,
            ),
            mobile: Container(
              color: Colors.yellow,
            ),
            desktop: _DesktopView(),
          ),
        ],
      ),
    );
  }
}

class _DesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [],
    );
  }
}
