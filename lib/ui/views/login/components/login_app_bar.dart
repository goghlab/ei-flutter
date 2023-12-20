
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/widgets/custom_app_bar/custom_app_bar.dart';

class LoginAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const LoginAppBar({
    Key? key,
  })  : preferredSize = const Size.fromHeight(kToolbarHeight),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: TranslationKeys.login.tr.toUpperCase(),
      textColor: Colors.black, // Set the text color to black
    );
  }
}