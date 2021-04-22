import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomButton extends StatelessWidget {
  final double width, height, borderWidth, borderRadius;
  final String text;
  final Color backgroundColor;
  final Color textColor, borderColor;
  VoidCallback onPressed;

  CustomButton({
    @required this.text,
    @required this.onPressed,
    this.width = double.infinity,
    this.height = 40,
    this.borderRadius,
    this.borderWidth,
    this.borderColor,
    this.backgroundColor = Colors.blue,
    this.textColor = Colors.red,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius ?? 6),
        border: Border.all(color: borderColor ?? Get.theme.primaryColor, width: borderWidth ?? 0),
        color: backgroundColor,
      ),
      child: Center(
        child: Text(
          text,
          style: Get.textTheme.subtitle1
              .copyWith(color: textColor, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
