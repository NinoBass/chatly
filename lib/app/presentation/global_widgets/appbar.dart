import 'package:chatly/app/config/config.dart';
import 'package:chatly/app/presentation/resources/resources.dart';
import 'package:chatly/app/presentation/views/landing_page/widgets/chatly_logo.dart';
import 'package:flutter/material.dart';

import 'spacing.dart';

class ChatlyAppbar extends StatelessWidget implements PreferredSizeWidget {
  const ChatlyAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isMobile = ResponsiveView.isMobile(context);
    return Container(
      color: black,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 120.0 : 24,
        vertical: 64,
      ),
      child: Row(
        mainAxisAlignment:
            isMobile ? MainAxisAlignment.start : MainAxisAlignment.center,
        children: [
          const ChatlyLogo(),
          if (!isMobile)
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    about,
                    style: TextStyle(
                      color: white60,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  HorizontalSpace(size: 80),
                  Text(
                    contactUs,
                    style: TextStyle(
                      color: white60,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  HorizontalSpace(size: 80),
                  Text(
                    faqs,
                    style: TextStyle(
                      color: white60,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 128);
}
