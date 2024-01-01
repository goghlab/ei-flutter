/*
Author: XamDesign
Date: 30.05.2023
*/

import 'package:flutter/material.dart';

import 'package:ei_autoshop/core/utils/base/base_stateless.dart';
import 'package:ei_autoshop/core/utils/device_utils.dart';
import 'package:ei_autoshop/ui/views/change_password/components/change_password_form.dart';
import 'package:ei_autoshop/ui/views/change_password/components/change_password_title.dart';

class ChangePasswordBody extends BaseStatelessWidget {
  const ChangePasswordBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: DeviceUtils.getHeight(context),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ChangePasswordTitle(),
            ChangePasswordForm(),
          ],
        ),
      ),
    );
  }
}
