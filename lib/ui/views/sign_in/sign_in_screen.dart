import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/ui/views/sign_in/components/sign_in_form.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: SignInForm(),
    );
  }
}
