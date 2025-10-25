import 'package:flutter/material.dart';
import '../../utils/app_colors.dart';

class CustomButton extends StatelessWidget {


  const CustomButton({
    super.key,
    this.height = 48,
    this.width = double.maxFinite,
    required this.onTap,
    this.title = "Get Started",
    this.marginVertical = 0,
    this.marginHorizontal = 0,
    this.backgroundColor = AppColors.primaryColor,
    this.borderRadius = 6,
    this.fontSize = 16,
  });

  final double height;
  final double width;
  final double marginVertical;
  final double marginHorizontal;
  final double borderRadius;
  final double fontSize;

  final VoidCallback onTap;
  final String title;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: marginVertical,
          horizontal: marginHorizontal,
        ),
        alignment: Alignment.center,
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(borderRadius),
          color: backgroundColor,
        ),
        child: CustomText(
          fontWeight: FontWeight.w600,
          fontSize: fontSize,
          color: Colors.white,
          textAlign: TextAlign.center,
          text: title,
        ),
      ),
    );
  }
}


class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  final TextAlign textAlign;
  final TextOverflow? overflow;
  final int? maxLines;
  final double? letterSpacing;
  final double? height;
  final String? fontFamily;

  const CustomText({
    super.key,
    required this.text,
    this.fontSize = 14,
    this.fontWeight = FontWeight.normal,
    this.color = Colors.black,
    this.textAlign = TextAlign.start,
    this.overflow,
    this.maxLines,
    this.letterSpacing,
    this.height,
    this.fontFamily,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      overflow: overflow,
      maxLines: maxLines,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
        letterSpacing: letterSpacing,
        height: height,
        fontFamily: fontFamily,
      ),
    );
  }
}
