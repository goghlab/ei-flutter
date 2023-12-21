import 'package:flutter/material.dart';

class OnboardingTitleText extends StatelessWidget {
  final String text;

  const OnboardingTitleText({
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
        color: Colors.grey, // Set text color to grey
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
