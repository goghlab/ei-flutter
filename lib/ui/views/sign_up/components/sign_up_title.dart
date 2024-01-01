import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ei_autoshop/core/translations/translation_keys.dart';

class SignUpTitle extends StatelessWidget {
  const SignUpTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        TranslationKeys.SignUpTitle.tr,
        style: context.textTheme.titleLarge,
      ),
    );
  }
}
