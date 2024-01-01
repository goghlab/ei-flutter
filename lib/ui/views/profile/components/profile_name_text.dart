/*
Author: XamDesign
Date: 9.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ei_autoshop/core/translations/translation_keys.dart';
import 'package:ei_autoshop/core/utils/base/base_stateless.dart';
import 'package:ei_autoshop/ui/views/profile/components/profile_info_text.dart';

class ProfileNameText extends BaseStatelessWidget {
  const ProfileNameText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ProfileInfoText(
      title: TranslationKeys.nameTitle.tr,
      text: "XamDesign",
    );
  }
}
