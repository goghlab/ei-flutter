/*
Author: XamDesign
Date: 22.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ei_autoshop/core/translations/translation_keys.dart';
import 'package:ei_autoshop/core/utils/base/base_stateless.dart';

class ForgotPasswordDescription extends BaseStatelessWidget {
  const ForgotPasswordDescription({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      TranslationKeys.forgotPasswordDescription.tr,
      style: context.textTheme.titleMedium?.copyWith(
        fontWeight: FontWeight.w300,
      ),
    );
  }
}
