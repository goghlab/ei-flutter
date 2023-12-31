/*
Author: XamDesign
Date: 7.06.2023
*/

import 'package:flutter/material.dart';

import 'package:ei_autoshop/core/utils/device_utils.dart';
import 'package:ei_autoshop/ui/views/order_summary/components/order_summary_order_list.dart';

class OrderSummaryBody extends StatelessWidget {
  const OrderSummaryBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: DeviceUtils.getHeight(context),
      child: const OrderSummaryOrderList(),
    );
  }
}
