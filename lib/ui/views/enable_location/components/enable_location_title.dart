/*
Author: XamDesign
Date: 6.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ei_autoshop/core/translations/translation_keys.dart';
import 'package:ei_autoshop/core/utils/base/base_stateless.dart';

class EnableLocationTitle extends BaseStatelessWidget {
  const EnableLocationTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      TranslationKeys.enableLocationTitle.tr,
      style: context.textTheme.titleLarge?.copyWith(
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
