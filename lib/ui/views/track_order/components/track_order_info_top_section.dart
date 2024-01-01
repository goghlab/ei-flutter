/*
Author: XamDesign
Date: 12.06.2023
*/

import 'package:flutter/material.dart';

import 'package:ei_autoshop/core/models/order_model.dart';
import 'package:ei_autoshop/core/utils/base/base_stateless.dart';
import 'package:ei_autoshop/ui/views/track_order/components/track_order_info_code.dart';
import 'package:ei_autoshop/ui/views/track_order/components/track_order_info_image.dart';

class TrackOrderInfoTopSection extends BaseStatelessWidget {
  final Order order;

  const TrackOrderInfoTopSection({
    required this.order,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: TrackOrderInfoImage(image: order.product.images.first)),
        const SizedBox(width: 16.0),
        TrackOrderInfoCode(code: order.code),
      ],
    );
  }
}
