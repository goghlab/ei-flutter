/*
Author: XamDesign
Date: 13.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ei_autoshop/core/constants/color_constants.dart';
import 'package:ei_autoshop/core/data/language_list.dart';
import 'package:ei_autoshop/core/models/language_model.dart';
import 'package:ei_autoshop/core/translations/translation_keys.dart';
import 'package:ei_autoshop/core/utils/base/base_controller.dart';
import 'package:ei_autoshop/core/utils/device_utils.dart';
import 'package:ei_autoshop/core/widgets/custom_bottom_sheet/custom_bottom_sheet_subtitle.dart';

class SettingsLanguageBottomSheetLanguageRow extends StatefulWidget {
  const SettingsLanguageBottomSheetLanguageRow({
    super.key,
  });

  @override
  State<SettingsLanguageBottomSheetLanguageRow> createState() =>
      _SettingsLanguageBottomSheetLanguageRowState();
}

class _SettingsLanguageBottomSheetLanguageRowState
    extends State<SettingsLanguageBottomSheetLanguageRow> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomBottomSheetSubtitle(title: TranslationKeys.language.tr),
          DropdownButtonHideUnderline(
            child: DropdownButton<Language>(
              value: BaseController.settingsController.language.value,
              icon: const Icon(Icons.keyboard_arrow_down_rounded),
              dropdownColor: BaseController.themeController.isDark.value
                  ? kDarkFieldColor
                  : kLightFieldColor,
              elevation: 16,
              borderRadius: BorderRadius.circular(24.0),
              style: context.textTheme.titleSmall,
              onChanged: (Language? value) {
                BaseController.settingsController.changeLanguage(value!);
              },
              items:
                  languageList.map<DropdownMenuItem<Language>>((Language lang) {
                return DropdownMenuItem<Language>(
                  value: lang,
                  child: Text(lang.name),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
