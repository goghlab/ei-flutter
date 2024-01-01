import 'package:flutter/material.dart';

import 'package:ei_autoshop/ui/views/sign_up/components/sign_up_description.dart';
import 'package:ei_autoshop/ui/views/sign_up/components/sign_up_title.dart';

class SignUpWelcome extends StatelessWidget {
  const SignUpWelcome({
    Key? key, // Fix here
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SignUpTitle(),
        SignUpDescription(),
      ],
    );
  }
}
