import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ei_autoshop/core/translations/translation_keys.dart';
import 'package:ei_autoshop/core/utils/base/base_stateless.dart';
import 'package:ei_autoshop/core/widgets/custom_submit_button.dart';

class SignUpSignUpButton extends BaseStatelessWidget {
  final VoidCallback onTap;

  const SignUpSignUpButton({
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomSubmitButton(
      title: TranslationKeys.SignUp.tr,
      onTap: onTap,
    );
  }
}
