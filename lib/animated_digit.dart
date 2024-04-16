import 'package:countup/countup.dart';
import 'package:flutter/material.dart';

class AnimatedNumber extends StatelessWidget {
  final int value;
  final double fontSize;
  final double end;
  final double begin;

  const AnimatedNumber(
      {super.key,
      required this.value,
      required this.fontSize,
      required this.end,
      required this.begin});

  @override
  Widget build(BuildContext context) {
    return Countup(
      begin: begin,
      duration: const Duration(seconds: 2),
      separator: ',',
      style: const TextStyle(
        fontSize: 36,
      ),
      end: end,
    );
    //   AnimatedFlipCounter(
    //   key: const Key("ads"),
    //   value: value,
    //   textStyle: TextStyle(
    //     color: Colors.white,
    //     fontSize: fontSize,
    //     fontWeight: FontWeight.w500,
    //     overflow: TextOverflow.ellipsis,
    //   ),
    //   curve: Curves.easeOutCubic,
    //   duration: const Duration(milliseconds: 400),
    //   fractionDigits: 0,
    //   thousandSeparator: ",",
    // );
  }
}
