/*
Author: XamDesign
Date: 20.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/ui/views/onboarding/components/onboarding_bordered_title_text.dart';
import 'package:xam_shoes_app/ui/views/onboarding/components/onboarding_title_text.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';

class OnboardingTitle extends StatelessWidget {
  const OnboardingTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OnboardingBorderedTitleText(
          text: 'EI-AutoShop',
        ),
        OnboardingTitleText(
          text: 'Demo',
        ),
        OnboardingBorderedTitleText(
          text: 'Store',
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            'Get started with our demo app now',
            style: context.textTheme.titleMedium?.copyWith(
              color: kLightTextSecondaryColor,
            ),
          ),
        ),
      ], 
    );  
  }
}
