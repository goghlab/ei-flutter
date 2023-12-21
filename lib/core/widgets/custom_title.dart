// custom_title.dart

import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  final String titleTop;
  final String titleBottom;
  final Color textColor;
  final double fontSize; // Added fontSize parameter with a default value

  const CustomTitle({
    required this.titleTop,
    required this.titleBottom,
    this.textColor = Colors.black, // Set default text color to black
    this.fontSize = 30.0, // Set default font size to 16.0
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titleTop,
          style: TextStyle(
            fontWeight: FontWeight.w300,
            color: textColor,
            fontSize: fontSize, // Apply font size
          ),
        ),
        Text(
          titleBottom,
          style: TextStyle(
            fontWeight: FontWeight.w500,
            color: textColor,
            fontSize: fontSize, // Apply font size
          ),
        ),
      ],
    );
  }
}
