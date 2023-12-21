// discover_title.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/core/widgets/custom_title.dart';

class DiscoverTitle extends StatelessWidget {
  const DiscoverTitle({
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
        vertical: DeviceUtils.getDynamicHeight(context, 0.02),
      ),
      child: CustomTitle(
        titleTop: "🤳Scan QR Code to Enter",
        titleBottom: TranslationKeys.discoverTitleLine2.tr,
        textColor: Colors.black,
        fontSize: 25.0, // Adjust the font size as needed
      ),
    );
  }
}
