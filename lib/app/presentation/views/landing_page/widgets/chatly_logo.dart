import 'package:chatly/app/presentation/resources/resources.dart';
import 'package:chatly/app/presentation/widgets.dart';
import 'package:flutter/material.dart';

class ChatlyLogo extends StatelessWidget {
  const ChatlyLogo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          chatlyIcon,
          color: green,
          height: 25,
          width: 25,
        ),
        const HorizontalSpace(),
        const SelectableText(
          chatly,
          style: TextStyle(
            color: green,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
