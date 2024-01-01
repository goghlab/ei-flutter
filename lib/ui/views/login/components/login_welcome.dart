import 'package:flutter/material.dart';

import 'package:ei_autoshop/ui/views/login/components/login_description.dart';
import 'package:ei_autoshop/ui/views/login/components/login_title.dart';

class LoginWelcome extends StatelessWidget {
  const LoginWelcome({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        LoginTitle(
          textColor: Colors.black, // Set the text color to black
        ),
        LoginDescription(
          textColor: Colors.black, // Set the text color to black
        ),
      ],
    );
  }
}
