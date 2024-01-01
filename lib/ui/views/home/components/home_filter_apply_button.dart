/*
Author: XamDesign
Date: 1.06.2023
*/

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ei_autoshop/core/translations/translation_keys.dart';
import 'package:ei_autoshop/core/utils/base/base_stateless.dart';
import 'package:ei_autoshop/core/utils/device_utils.dart';
import 'package:ei_autoshop/core/widgets/custom_submit_button.dart';

class HomeFilterApplyButton extends BaseStatelessWidget {
  const HomeFilterApplyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
      ),
      child: CustomSubmitButton(
        title: TranslationKeys.apply.tr,
        onTap: () {
          HapticFeedback.lightImpact();
          Get.back();
        },
      ),
    );
  }
}
