import 'package:flutter/material.dart';

enum CustomFontWeight {
  thin,
  extraLight,
  light,
  regular,
  medium,
  bold,
  semiBold,
  extraBold,
  black
}

class CustomText extends StatelessWidget {
  final String? text;
  final double? size;
  final Color? color;
  final TextAlign? textAlign;
  final int? maxLines;
  final CustomFontWeight? fontWeight;
  final TextOverflow? overflow;
  final double? lineHeightToFontSizeRatio;
  final double letterSpacing;
  final Shadow? shadow;
  final TextDecoration? decoration;

  const CustomText({
    Key? key,
    @required this.text,
    this.size,
    this.color = Colors.black,
    this.textAlign,
    this.maxLines,
    this.letterSpacing = 1,
    this.lineHeightToFontSizeRatio,
    this.fontWeight = CustomFontWeight.regular,
    this.overflow = TextOverflow.ellipsis,
    this.shadow,
    this.decoration,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? "",
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,
      style: TextStyle(
        height: lineHeightToFontSizeRatio,
        color: color,
        fontSize: size,
        letterSpacing: letterSpacing,
        // fontFamily: getFontFamily(fontWeight),
        fontWeight: getFontWeight(fontWeight),
        decoration: decoration ?? TextDecoration.none,
        shadows: shadow != null
            ? [
                shadow!,
              ]
            : [],
      ),
    );
  }

  // String getFontFamily(CustomFontWeight? fontWeight) {
  //   if (fontWeight == CustomFontWeight.semiBold ||
  //       fontWeight == CustomFontWeight.black) {
  //     return fo.fontTypeBlack;
  //   } else if (fontWeight == CustomFontWeight.bold) {
  //     return FontFamily.fontTypeBold;
  //   } else if (fontWeight == CustomFontWeight.medium) {
  //     return FontFamily.fontTypeMedium;
  //   } else if (fontWeight == CustomFontWeight.light) {
  //     return FontFamily.fontTypeLight;
  //   }
  //   return FontFamily.fontTypeMedium;
  // }

  FontWeight getFontWeight(CustomFontWeight? fontWeight) {
    if (fontWeight == CustomFontWeight.thin) {
      return FontWeight.w100;
    } else if (fontWeight == CustomFontWeight.extraLight) {
      return FontWeight.w200;
    } else if (fontWeight == CustomFontWeight.light) {
      return FontWeight.w300;
    } else if (fontWeight == CustomFontWeight.regular) {
      return FontWeight.w400;
    } else if (fontWeight == CustomFontWeight.medium) {
      return FontWeight.w500;
    } else if (fontWeight == CustomFontWeight.semiBold) {
      return FontWeight.w600;
    } else if (fontWeight == CustomFontWeight.bold) {
      return FontWeight.w700;
    } else if (fontWeight == CustomFontWeight.extraBold) {
      return FontWeight.w800;
    } else if (fontWeight == CustomFontWeight.black) {
      return FontWeight.w900;
    }
    return FontWeight.w400;
  }
}
