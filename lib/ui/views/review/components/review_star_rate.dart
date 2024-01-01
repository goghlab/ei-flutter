/*
Author: XamDesign
Date: 9.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ei_autoshop/core/utils/base/base_controller.dart';
import 'package:ei_autoshop/core/utils/base/base_stateless.dart';
import 'package:ei_autoshop/core/widgets/custom_star_rate.dart';

class ReviewStarRate extends BaseStatelessWidget {
  const ReviewStarRate({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => CustomSelectableStarRate(
        key: UniqueKey(),
        value: BaseController.reviewController.rating.value,
        starSize: 30.0,
        onRatingChanged: (val) =>
            BaseController.reviewController.changeRating(val),
      ),
    );
  }
}
