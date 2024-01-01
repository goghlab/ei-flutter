import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ei_autoshop/core/translations/translation_keys.dart';
import 'package:ei_autoshop/core/utils/device_utils.dart';
import 'package:ei_autoshop/core/widgets/custom_text_field/custom_text_field_with_title.dart';

class SignUpUsernameField extends StatelessWidget {
  const SignUpUsernameField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: DeviceUtils.getDynamicWidth(context, 0.02),
      ),
      child: CustomTextFieldWithTitle(
        title: TranslationKeys.usernameTitle.tr,
        hintText: TranslationKeys.usernameHint.tr,
        textInputAction: TextInputAction.next,
      ),
    );
  }
}
