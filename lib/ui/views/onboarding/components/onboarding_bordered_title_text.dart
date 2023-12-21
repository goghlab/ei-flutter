/*
Author: XamDesign
Date: 20.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';

class OnboardingBorderedTitleText extends StatelessWidget {
  final String text;

  const OnboardingBorderedTitleText({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 40,
        letterSpacing: 1,
        color: Colors.black, // Set text color to black
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
