/*
Author: XamDesign
Date: 29.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ei_autoshop/core/translations/translation_keys.dart';
import 'package:ei_autoshop/core/utils/base/base_stateless.dart';

class CustomDrawerTitle extends BaseStatelessWidget {
  const CustomDrawerTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      TranslationKeys.menu.tr.toUpperCase(),
      style: context.textTheme.bodyLarge?.copyWith(
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
