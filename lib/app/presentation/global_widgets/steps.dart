import 'package:chatly/app/config/utils/extensions.dart';
import 'package:chatly/app/presentation/resources/resources.dart';
import 'package:chatly/app/presentation/widgets.dart';
import 'package:flutter/material.dart';

class Steps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.width,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          _line(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              _Step(0),
              _Step(1),
              _Step(2),
              _Step(3),
            ],
          ),
        ],
      ),
    );
  }

  Widget _line() {
    return Divider(
      height: 2,
      indent: 6,
      endIndent: 6,
      color: Colors.white.withOpacity(.2),
    ).marginOnly(bottom: 3);
  }
}

class _Step extends StatelessWidget {
  const _Step(
    this.index, {
    Key? key,
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "01",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w600,
            color: green,
          ),
        ),
        const VerticalSpace(),
        Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(.2),
            shape: BoxShape.circle,
            border: Border.all(
              width: 2,
              color: Colors.white.withOpacity(.2),
            ),
          ),
          child: Container(
            height: 4,
            width: 4,
            decoration: const BoxDecoration(
              color: green,
              shape: BoxShape.circle,
            ),
          ),
        ),
      ],
    );
  }
}
