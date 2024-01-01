import 'package:flutter/material.dart';
import 'package:ei_autoshop/ui/views/sign_up/components/sign_up_app_bar.dart';
import 'package:ei_autoshop/ui/views/sign_up/components/sign_up_body.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: SignUpAppBar(),
      body: SignUpBody(),
    );
  }
}
