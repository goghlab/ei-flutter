import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ei_autoshop/core/translations/translation_keys.dart';
import 'package:ei_autoshop/core/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:ei_autoshop/core/widgets/custom_app_bar/custom_app_bar_back_button.dart';

class SignInAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const SignInAppBar({
    Key? key,
  }) : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: TranslationKeys.signIn.tr.toUpperCase(),
      leading: const CustomAppBarBackButton(),
      textColor: Colors.black, // Set text color to black
    );
  }
}
