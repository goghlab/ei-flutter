/*
Author: XamDesign
Date: 6.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ei_autoshop/core/constants/color_constants.dart';
import 'package:ei_autoshop/core/translations/translation_keys.dart';
import 'package:ei_autoshop/core/utils/base/base_stateless.dart';

class EnableLocationRemindLaterButton extends BaseStatelessWidget {
  const EnableLocationRemindLaterButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: GestureDetector(
        onTap: () => Get.back(),
        child: Text(
          TranslationKeys.remindLater.tr,
          style: context.textTheme.bodyMedium?.copyWith(
            color: kLightTextSecondaryColor,
          ),
        ),
      ),
    );
  }
}
