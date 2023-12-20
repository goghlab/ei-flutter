import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/translations/translation_keys.dart';

class SignInTitle extends StatelessWidget {
  final Color textColor;

  const SignInTitle({
    Key? key,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        TranslationKeys.signInTitle.tr,
         style: context.textTheme.headline1?.copyWith(
          fontWeight: FontWeight.bold,
          fontSize: 30.0, // Adjust the font size as needed
          color: textColor,
          // Add other styling properties as needed...
        ),
      ),
    );
  }
}
