import 'package:auto_size_text/auto_size_text.dart';
import 'package:chatly/app/config/config.dart';
import 'package:chatly/app/presentation/resources/resources.dart';
import 'package:chatly/app/presentation/widgets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class LandingPage01 extends StatelessWidget {
  const LandingPage01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ChatlyAppbar(),
      body: SizedBox(
        width: context.width,
        height: context.height,
        child: Stack(
          children: [
            ResponsiveView(
              tablet: Container(
                color: Colors.red,
              ),
              mobile: _MobileView(),
              desktop: _DesktopView(),
            ),
          ],
        ),
      ),
    );
  }
}

class _DesktopView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AutoSizeText(
                  talkEasily,
                  style: TextStyle(
                    color: white,
                    fontSize: 62,
                    fontWeight: FontWeight.w600,
                  ),
                  maxLines: 1,
                ),
                GradientText(
                  organisedAndFast,
                  style: const TextStyle(
                    fontSize: 62,
                    fontWeight: FontWeight.w600,
                  ),
                  colors: const <Color>[
                    gradient1,
                    gradient2,
                  ],
                ),
                const VerticalSpace(size: 20),
                Text(
                  description01,
                  style: TextStyle(
                    color: const Color(0xFFEEEFED).withOpacity(.5),
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const VerticalSpace(size: 60),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: white60,
                      ),
                      child: Row(
                        children: [
                          Image.asset(appleIcon),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _MobileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 48),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AutoSizeText(
              talkEasily,
              style: TextStyle(
                color: white,
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
              maxLines: 1,
            ),
            GradientText(
              organisedAndFast,
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
              colors: const <Color>[
                gradient1,
                gradient2,
              ],
            ),
            const VerticalSpace(size: 20),
            Text(
              description01,
              style: TextStyle(
                color: const Color(0xFFEEEFED).withOpacity(.5),
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            const VerticalSpace(size: 60),
            Row(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: white60,
                  ),
                  child: Row(
                    children: [
                      Image.asset(appleIcon),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
