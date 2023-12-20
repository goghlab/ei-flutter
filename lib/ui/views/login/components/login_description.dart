import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:xam_shoes_app/core/translations/translation_keys.dart';

class LoginDescription extends StatelessWidget {
  final Color textColor;

  const LoginDescription({
    Key? key,
    required this.textColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      TranslationKeys.loginDescription.tr,
      style: context.textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.w300,
        color: textColor,
      ),
    );
  }
}