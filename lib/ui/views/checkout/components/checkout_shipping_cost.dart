/*
Author: XamDesign
Date: 1.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ei_autoshop/core/constants/color_constants.dart';
import 'package:ei_autoshop/core/translations/translation_keys.dart';
import 'package:ei_autoshop/core/utils/base/base_controller.dart';
import 'package:ei_autoshop/core/utils/device_utils.dart';

class CheckoutShippingCost extends StatelessWidget {
  const CheckoutShippingCost({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            TranslationKeys.shippingCost.tr,
            style: context.textTheme.labelMedium?.copyWith(
              color: kLightTextSecondaryColor,
              fontWeight: FontWeight.normal,
            ),
          ),
          Obx(
            () => Text(
              "\$ ${BaseController.cartController.shippingCost.toStringAsFixed(2)}",
              style: context.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
