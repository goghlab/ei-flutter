/*
Author: XamDesign
Date: 12.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ei_autoshop/core/constants/color_constants.dart';
import 'package:ei_autoshop/core/translations/translation_keys.dart';
import 'package:ei_autoshop/core/utils/base/base_stateless.dart';

class TrackOrderInfoCode extends BaseStatelessWidget {
  final String code;

  const TrackOrderInfoCode({
    required this.code,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TranslationKeys.code.tr,
            style: context.textTheme.bodyLarge?.copyWith(
              color: kLightTextSecondaryColor,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 4.0),
          Text(
            code,
            style: context.textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
