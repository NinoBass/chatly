import 'package:chatly/app/presentation/resources/resources.dart';
import 'package:chatly/app/presentation/widgets.dart';
import 'package:flutter/material.dart';
import 'steps.dart';

class StepperHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Steps(),
        // const VerticalSpace(size: 64),
      ],
    );
  }

  Widget stepperText(
    BuildContext context,
    int index,
    String stepTitle,
  ) {
    return Text(
      stepTitle,
      style: const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w600,
        color: green,
      ),
    );
  }
}
