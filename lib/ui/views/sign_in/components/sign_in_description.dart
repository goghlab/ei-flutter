import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/translations/translation_keys.dart';

class SignInDescription extends StatelessWidget {
  final Color textColor;

  SignInDescription({
    Key? key,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      TranslationKeys.signInDescription.tr,
      style: context.textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.w300,
        color: textColor,
        // Add other styling properties as needed...
      ),
    );
  }
}
