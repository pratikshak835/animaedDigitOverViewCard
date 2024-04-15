// import 'package:flutter/material.dart';
// import 'package:test_package/animated_digit.dart';
// import 'package:test_package/custom_card.dart';
// import 'package:test_package/custom_text.dart';
//
// class OverviewCard extends StatefulWidget {
//   final List<Color> gradiantColors;
//   final String count;
//   final String title;
//   final Color textShadowColor;
//   final Color boxShadowColor;
//   final double height;
//   final EdgeInsetsGeometry padding;
//   final double countFontSize;
//   final double titleFontSize;
//   final double spaceBetweenCountAndTitle;
//
//   const OverviewCard({
//     Key? key,
//     required this.gradiantColors,
//     required this.count,
//     required this.title,
//     required this.textShadowColor,
//     required this.boxShadowColor,
//     this.height = 150,
//     this.padding = const EdgeInsets.all(24.0),
//     this.countFontSize = 50,
//     this.titleFontSize = 24,
//     this.spaceBetweenCountAndTitle = 12,
//   }) : super(key: key);
//
//   @override
//   State<OverviewCard> createState() => _OverviewCardState();
// }
//
// class _OverviewCardState extends State<OverviewCard> {
//   @override
//   Widget build(BuildContext context) {
//     return CustomCard(
//       cardBackground: Colors.blue,
//       height: widget.height,
//       boxShadow: BoxShadow(
//         color: widget.boxShadowColor,
//         blurRadius: 10,
//         offset: const Offset(0, 6),
//       ),
//       gradient: LinearGradient(
//         colors: widget.gradiantColors,
//         begin: Alignment.topLeft,
//         end: Alignment.bottomRight,
//       ),
//       constraints: const BoxConstraints(minWidth: 300),
//       child: Padding(
//         padding: widget.padding,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Expanded(
//               child: AnimatedNumber(
//                 value: 34567890,
//                 fontSize: widget.countFontSize,
//               ),
//             ),
//             SizedBox(
//               height: widget.spaceBetweenCountAndTitle,
//             ),
//             CustomText(
//               text: widget.title,
//               color: Colors.white,
//               fontWeight: CustomFontWeight.medium,
//               size: widget.titleFontSize,
//               maxLines: 3,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'dart:async'; // Import dart:async for Timer

import 'package:flutter/material.dart';
import 'package:test_package/animated_digit.dart';
import 'package:test_package/custom_card.dart';
import 'package:test_package/custom_text.dart';

class OverviewCard extends StatefulWidget {
  final List<Color> gradiantColors;
  final int initialValue;
  final String title;
  final Color textShadowColor;
  final Color boxShadowColor;
  final double height;
  final EdgeInsetsGeometry padding;
  final double countFontSize;
  final double titleFontSize;
  final double spaceBetweenCountAndTitle;

  const OverviewCard({
    Key? key,
    required this.gradiantColors,
    required this.initialValue,
    required this.title,
    required this.textShadowColor,
    required this.boxShadowColor,
    this.height = 150,
    this.padding = const EdgeInsets.all(24.0),
    this.countFontSize = 50,
    this.titleFontSize = 24,
    this.spaceBetweenCountAndTitle = 12,
  }) : super(key: key);

  @override
  State<OverviewCard> createState() => _OverviewCardState();
}

class _OverviewCardState extends State<OverviewCard> {
  late int _currentValue;

  @override
  void initState() {
    super.initState();
    _currentValue = widget.initialValue;
    // Start a timer to increase the value by 1 after a particular duration
    Timer.periodic(Duration(seconds: 2), (timer) {
      setState(() {
        _currentValue++; // Increase the value by 1
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomCard(
      cardBackground: Colors.blue,
      height: widget.height,
      boxShadow: BoxShadow(
        color: widget.boxShadowColor,
        blurRadius: 10,
        offset: const Offset(0, 6),
      ),
      gradient: LinearGradient(
        colors: widget.gradiantColors,
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      constraints: const BoxConstraints(minWidth: 300),
      child: Padding(
        padding: widget.padding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: AnimatedNumber(
                value: _currentValue,
                fontSize: 50,
              ),
            ),
            SizedBox(
              height: widget.spaceBetweenCountAndTitle,
            ),
            CustomText(
              text: widget.title,
              color: Colors.white,
              fontWeight: CustomFontWeight.medium,
              size: widget.titleFontSize,
              maxLines: 3,
            ),
          ],
        ),
      ),
    );
  }
}
