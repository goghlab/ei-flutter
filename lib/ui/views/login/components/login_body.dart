/*
Author: XamDesign
Date: 5.06.2023
*/

import 'package:flutter/material.dart';
import 'package:ei_autoshop/core/utils/device_utils.dart';
import 'package:ei_autoshop/ui/views/login/components/login_form.dart';
import 'package:ei_autoshop/ui/views/login/components/login_sign_in_button.dart';
import 'package:ei_autoshop/ui/views/login/components/login_welcome.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
          vertical: 16.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const LoginWelcome(),
            const SizedBox(height: 16.0), // Add some spacing between welcome and form
            const LoginForm(),
            const SizedBox(height: 16.0), // Add some spacing between form and button
            const LoginSignInButton(),
          ],
        ),
      ),
    );
  }
}
