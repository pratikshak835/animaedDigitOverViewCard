import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';

class AnimatedNumber extends StatelessWidget {
  final int value;
  final double fontSize;

  const AnimatedNumber(
      {super.key, required this.value, required this.fontSize});

  @override
  Widget build(BuildContext context) {
    return AnimatedFlipCounter(
      key: const Key("ads"),
      value: value,
      textStyle: TextStyle(
        color: Colors.white,
        fontSize: fontSize,
        fontWeight: FontWeight.w500,
        overflow: TextOverflow.ellipsis,
      ),
      curve: Curves.easeOutCubic,
      duration: const Duration(milliseconds: 400),
      fractionDigits: 0,
      thousandSeparator: ",",
    );
  }
}
