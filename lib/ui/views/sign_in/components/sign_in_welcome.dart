/*
Author: XamDesign
Date: 22.05.2023
*/

import 'package:flutter/material.dart';

import 'package:ei_autoshop/ui/views/sign_in/components/sign_in_description.dart';
import 'package:ei_autoshop/ui/views/sign_in/components/sign_in_title.dart';

class SignInWelcome extends StatelessWidget {
  const SignInWelcome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SignInTitle(
          textColor: Colors.black, // Set text color to black
        ),
        SignInDescription(
          textColor: Colors.black, // Set text color to black
        ),
      ],
    );
  }
}
