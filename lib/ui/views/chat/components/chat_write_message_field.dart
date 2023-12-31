/*
Author: XamDesign
Date: 7.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ei_autoshop/core/translations/translation_keys.dart';
import 'package:ei_autoshop/core/utils/base/base_controller.dart';
import 'package:ei_autoshop/core/widgets/custom_text_field/custom_text_field.dart';

class ChatWriteMessageField extends StatelessWidget {
  const ChatWriteMessageField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: BaseController.messageController.messageEditController,
      hintText: TranslationKeys.writeReply.tr,
      onChanged: (val) => BaseController.messageController.writeMessage(val),
    );
  }
}
