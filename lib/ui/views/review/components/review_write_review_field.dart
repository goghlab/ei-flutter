/*
Author: XamDesign
Date: 9.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ei_autoshop/core/translations/translation_keys.dart';
import 'package:ei_autoshop/core/utils/base/base_stateless.dart';
import 'package:ei_autoshop/core/widgets/custom_text_field/custom_multiline_text_field.dart';

class ReviewWriteReviewField extends BaseStatelessWidget {
  const ReviewWriteReviewField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomMultilineTextField(
      hintText: TranslationKeys.writeReviewHint.tr,
      maxLines: 5,
    );
  }
}
