/*
Author: XamDesign
Date: 9.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ei_autoshop/core/translations/translation_keys.dart';
import 'package:ei_autoshop/core/utils/base/base_stateless.dart';
import 'package:ei_autoshop/core/widgets/custom_submit_button.dart';

class ReviewSubmitButton extends BaseStatelessWidget {
  const ReviewSubmitButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: CustomSubmitButton(
        title: TranslationKeys.submit.tr,
        onTap: () => Get.back(),
      ),
    );
  }
}
