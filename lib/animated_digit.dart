import 'package:animated_digit/animated_digit.dart';
import 'package:flutter/material.dart';

class AnimatedNumber extends StatelessWidget {
  final int value;
  final double fontSize;

  const AnimatedNumber(
      {super.key, required this.value, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return AnimatedDigitWidget(
      key: const Key("ads"),
      value: value,
      textStyle: TextStyle(
        color: Colors.yellow,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
        overflow: TextOverflow.ellipsis,
      ),
      curve: Curves.easeOutCubic,
      duration: const Duration(milliseconds: 400),
      enableSeparator: true,
      separateSymbol: ",",
      fractionDigits: 0,
    );
  }
}
