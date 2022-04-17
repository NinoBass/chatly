import 'package:auto_size_text/auto_size_text.dart';
import 'package:chatly/app/presentation/resources/resources.dart';
import 'package:chatly/app/presentation/widgets.dart';
import 'package:flutter/material.dart';

class DownloadButtons extends StatelessWidget {
  const DownloadButtons({
    Key? key,
    required this.icon,
    required this.platform,
  }) : super(key: key);

  final String icon;
  final String platform;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xFFEEEEEE).withOpacity(.24),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 22,
        vertical: 16,
      ),
      child: Row(
        children: [
          Image.asset(
            icon,
            color: Colors.white70,
            height: 29,
            width: 32,
          ),
          const HorizontalSpace(size: 10),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AutoSizeText(
                getItOn,
                maxLines: 1,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w400,
                ),
              ),
              AutoSizeText(
                platform,
                maxLines: 1,
                style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 24,
                  letterSpacing: 0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
