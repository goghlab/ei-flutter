/*
Author: XamDesign
Date: 1.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ei_autoshop/core/translations/translation_keys.dart';
import 'package:ei_autoshop/core/utils/device_utils.dart';
import 'package:ei_autoshop/core/widgets/custom_title.dart';

class CheckoutTitle extends StatelessWidget {
  const CheckoutTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
        vertical: DeviceUtils.getDynamicHeight(context, 0.02),
      ),
      child: CustomTitle(
        titleTop: TranslationKeys.checkoutTitleLine1.tr,
        titleBottom: TranslationKeys.checkoutTitleLine2.tr,
      ),
    );
  }
}
