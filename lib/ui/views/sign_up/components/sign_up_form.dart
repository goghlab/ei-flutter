import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:xam_shoes_app/ui/views/navigation/navigation_screen.dart';
import 'package:xam_shoes_app/ui/views/sign_up/components/sign_up_email_field.dart';
import 'package:xam_shoes_app/ui/views/sign_up/components/sign_up_password_field.dart';
import 'package:xam_shoes_app/ui/views/sign_up/components/sign_up_sign_up_button.dart';
import 'package:xam_shoes_app/ui/views/sign_up/components/sign_up_username_field.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    super.key,
  });

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const SignUpUsernameField(),
          const SignUpEmailField(),
          const SignUpPasswordField(),
          SignUpSignUpButton(
            onTap: () {
              if (_formKey.currentState!.validate()) {
                Get.to(() => const NavigationScreen());
              }
            },
          ),
        ],
      ),
    );
  }
}
