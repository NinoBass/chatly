import 'package:auto_size_text/auto_size_text.dart';
import 'package:chatly/app/config/config.dart';
import 'package:chatly/app/config/utils/extensions.dart';
import 'package:chatly/app/presentation/global_widgets/stepper_header.dart';
import 'package:chatly/app/presentation/resources/resources.dart';
import 'package:chatly/app/presentation/widgets.dart';
import 'package:flutter/material.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import 'widgets/page_scroller.dart';

class LandingPage01 extends StatelessWidget {
  const LandingPage01({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ChatlyAppbar(),
      body: SizedBox(
        width: context.width,
        height: context.height,
        child: ResponsiveView(
          tablet: Container(
            color: Colors.red,
          ),
          mobile: _MobileView(),
          desktop: _DesktopView(),
        ),
      ),
    );
  }
}

class _DesktopView extends StatelessWidget {
  final myGroup = AutoSizeGroup();

  @override
  Widget build(BuildContext context) {
    const gradients = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        gradient1,
        gradient2,
      ],
    );
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          left: 130.0,
          right: 70,
          bottom: 64,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 5,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const VerticalSpace(size: 60),
                        AutoSizeText(
                          talkEasily,
                          group: myGroup,
                          style: const TextStyle(
                            color: white,
                            height: 1,
                            fontSize: 62,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w600,
                          ),
                          maxLines: 1,
                        ),
                        const VerticalSpace(size: 5),
                        Stack(
                          alignment: Alignment.centerRight,
                          clipBehavior: Clip.none,
                          children: [
                            ShaderMask(
                              shaderCallback: (Rect bounds) {
                                return gradients
                                    .createShader(Offset.zero & bounds.size);
                              },
                              child: AutoSizeText(
                                organisedAndFast,
                                maxLines: 1,
                                group: myGroup,
                                style: const TextStyle(
                                  fontSize: 62,
                                  color: white,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Positioned(
                              top: 65,
                              right: -24,
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Image.asset(
                                  line1,
                                ),
                              ),
                            )
                          ],
                        ),
                        const VerticalSpace(size: 34),
                        AutoSizeText(
                          description01,
                          maxLines: 3,
                          style: TextStyle(
                            color: const Color(0xFFEEEFED).withOpacity(.5),
                            fontSize: 18,
                            letterSpacing: 0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const VerticalSpace(size: 62),
                        Row(
                          children: const [
                            DownloadButtons(
                              icon: appleIcon,
                              platform: appleStore,
                            ),
                            HorizontalSpace(size: 24),
                            DownloadButtons(
                              icon: playstoreIcon,
                              platform: googlePlay,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const HorizontalSpace(size: 30),
                  Expanded(
                    flex: 4,
                    child: Container(
                      padding: const EdgeInsets.only(top: 30),
                      margin: const EdgeInsets.only(left: 50),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(phoneBg),
                          scale: 1.05,
                          filterQuality: FilterQuality.high,
                        ),
                      ),
                      child: Image.asset(
                        scrShot01,
                        filterQuality: FilterQuality.high,
                        fit: BoxFit.fitHeight,
                        scale: .8,
                      ),
                    ),
                  ),
                  const HorizontalSpace(size: 30),
                  const PageScrollerUI(),
                ],
              ).paddingSymmetric(horizontal: 4),
            ),
            const VerticalSpace(size: 64),
            Padding(
              padding: const EdgeInsets.only(right: 60.0),
              child: StepperHeader(),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomAppBar(
      //   elevation: 0.0,
      //   color: Colors.transparent,
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 140.0),
      //     child: StepperHeader(),
      //   ),
      // ),
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
            SelectableText(
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
                      Image.asset(
                        appleIcon,
                      ),
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
