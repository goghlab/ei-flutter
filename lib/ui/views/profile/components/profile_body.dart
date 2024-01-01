/*
Author: XamDesign
Date: 9.06.2023
*/

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:ei_autoshop/core/utils/base/base_stateless.dart';
import 'package:ei_autoshop/core/utils/device_utils.dart';
import 'package:ei_autoshop/ui/views/profile/components/profile_form.dart';
import 'package:ei_autoshop/ui/views/profile/components/profile_photo.dart';

class ProfileBody extends BaseStatelessWidget {
  const ProfileBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: DeviceUtils.getWidth(context),
        padding: EdgeInsets.symmetric(
          horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
        ),
        child: Column(
          children: [
            FadeInDown(from: 10, child: const ProfilePhoto()),
            FadeInUp(from: 10, child: const ProfileForm()),
          ],
        ),
      ),
    );
  }
}
