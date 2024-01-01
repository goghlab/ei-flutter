import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ei_autoshop/core/constants/color_constants.dart';
import 'package:ei_autoshop/core/translations/translation_keys.dart';
import 'package:ei_autoshop/core/utils/base/base_stateless.dart';

class ProfilePhoto extends BaseStatelessWidget {
  const ProfilePhoto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        children: [
          Image.asset("assets/images/profile.png",
              width: 100.0, height: 100.0),
          const SizedBox(height: 16.0),
          Column(
            children: [
              Text(
                "Everything Inteligence",
                style: context.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                TranslationKeys.changePhoto.tr,
                style: context.textTheme.bodyMedium?.copyWith(
                  color: kLightTextSecondaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
