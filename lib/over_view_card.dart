import 'package:flutter/material.dart';
import 'package:test_package/animated_digit.dart';
import 'package:test_package/custom_card.dart';
import 'package:test_package/custom_text.dart';
import 'package:test_package/responsiv.dart';

class OverviewCard extends StatelessWidget {
  final List<Color> gradiantColors;
  final String count;
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
    required this.count,
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
  Widget build(BuildContext context) {
    return CustomCard(
      cardBackground: Colors.blue,
      height: height,
      boxShadow: BoxShadow(
        color: boxShadowColor,
        blurRadius: 10,
        offset: const Offset(0, 6),
      ),
      gradient: LinearGradient(
        colors: gradiantColors,
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      constraints: const BoxConstraints(minWidth: 300),
      child: Padding(
        padding: padding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Responsive.isMobile(context)
                ? Expanded(
                    child: CustomText(
                      text: int.parse(count).toString(),
                      color: Colors.white,
                      fontWeight: CustomFontWeight.medium,
                      size: countFontSize,
                    ),
                  )
                : Expanded(
                    child: AnimatedNumber(
                      value: int.parse(count),
                      fontSize: countFontSize,
                    ),
                  ),
            SizedBox(
              height: spaceBetweenCountAndTitle,
            ),
            CustomText(
              text: title,
              color: Colors.white,
              fontWeight: CustomFontWeight.medium,
              size: titleFontSize,
              maxLines: 3,
            ),
          ],
        ),
      ),
    );
  }
}
