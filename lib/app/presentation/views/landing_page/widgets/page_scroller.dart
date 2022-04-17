import 'package:chatly/app/presentation/resources/resources.dart';
import 'package:chatly/app/presentation/widgets.dart';
import 'package:flutter/material.dart';

class PageScrollerUI extends StatelessWidget {
  const PageScrollerUI({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 6,
        vertical: 12,
      ),
      decoration: BoxDecoration(
        color: white.withOpacity(.15),
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.keyboard_arrow_up,
            color: white.withOpacity(.3),
            size: 16,
          ),
          Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: white.withOpacity(.5),
            ),
          ),
          Icon(
            Icons.keyboard_arrow_down,
            color: white.withOpacity(.3),
            size: 16,
          ),
          const VerticalSpace(size: 5),
          Text(
            "Scroll",
            style: TextStyle(
              fontSize: 8,
              fontWeight: FontWeight.w600,
              color: white.withOpacity(.5),
            ),
          ),
          const VerticalSpace(size: 3),
        ],
      ),
    );
  }
}
