/*
Author: XamDesign
Date: 30.05.2023
*/

import 'package:flutter/material.dart';

import 'package:ei_autoshop/core/utils/device_utils.dart';
import 'package:ei_autoshop/ui/views/notification/components/notification_list.dart';

class NotificationBody extends StatelessWidget {
  const NotificationBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: DeviceUtils.getHeight(context),
      child: const NotificationList(),
    );
  }
}
