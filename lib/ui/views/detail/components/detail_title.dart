/*
Author: XamDesign
Date: 29.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ei_autoshop/core/translations/translation_keys.dart';
import 'package:ei_autoshop/core/utils/base/base_stateless.dart';
import 'package:ei_autoshop/core/widgets/custom_title.dart';

class DetailTitle extends BaseStatelessWidget {
  final String model;

  const DetailTitle({
    required this.model,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTitle(
      titleTop: model,
      titleBottom: TranslationKeys.sneakers.tr,
    );
  }
}
