import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ei_autoshop/ui/views/sign_in/components/sign_in_app_bar.dart';
import 'package:ei_autoshop/ui/views/sign_in/components/sign_in_body.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SignInAppBar(),
      body: SignInBody(),
    );
  }
}
