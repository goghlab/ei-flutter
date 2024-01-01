
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ei_autoshop/core/translations/translation_keys.dart';
import 'package:ei_autoshop/core/utils/device_utils.dart';
import 'package:ei_autoshop/core/widgets/custom_title.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
        vertical: DeviceUtils.getDynamicHeight(context, 0.01),
      ),
      child: CustomTitle(
        titleTop: TranslationKeys.homeTitleLine1.trParams({
          "Items": "adidas",
        }),
        titleBottom: TranslationKeys.products.tr,
      ),
    );
  }
}
