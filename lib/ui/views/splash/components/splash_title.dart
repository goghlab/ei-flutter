import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ei_autoshop/core/constants/color_constants.dart';
import 'package:ei_autoshop/core/translations/translation_keys.dart';

class SplashTitle extends StatelessWidget {
  const SplashTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "We Innovate Shopping", 
      style: context.textTheme.titleLarge?.copyWith(
        color: kWhiteColor,
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
