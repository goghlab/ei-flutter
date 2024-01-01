/*
Author: XamDesign
Date: 7.06.2023
*/

import 'package:flutter/material.dart';

import 'package:ei_autoshop/core/models/order_model.dart';
import 'package:ei_autoshop/ui/views/track_order/components/track_order_info.dart';
import 'package:ei_autoshop/ui/views/track_order/components/track_order_location_info.dart';
import 'package:ei_autoshop/ui/views/track_order/components/track_order_title.dart';

class TrackOrderBody extends StatelessWidget {
  final Order order;

  const TrackOrderBody({
    required this.order,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TrackOrderTitle(),
          TrackOrderInfo(order: order),
          TrackOrderLocationInfo(order: order),
        ],
      ),
    );
  }
}
