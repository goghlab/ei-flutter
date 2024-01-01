// sign_in_button.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';  // Add Firebase Auth import
import 'package:ei_autoshop/core/translations/translation_keys.dart';
import 'package:ei_autoshop/core/utils/base/base_stateless.dart';
import 'package:ei_autoshop/core/widgets/custom_submit_button.dart';

class SignInSignInButton extends BaseStatelessWidget {
  final VoidCallback onTap;

  const SignInSignInButton({
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomSubmitButton(
      title: TranslationKeys.signIn.tr,
      onTap: onTap,
    );
  }
}
