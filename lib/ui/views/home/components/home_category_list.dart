/*
Author: XamDesign
Date: 25.05.2023
*/

import 'package:flutter/material.dart';
import 'package:ei_autoshop/core/utils/device_utils.dart';
import 'package:ei_autoshop/ui/views/home/components/home_category_item.dart';

class HomeCategoryList extends StatelessWidget {
  const HomeCategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: DeviceUtils.getWidth(context),
      height: DeviceUtils.getDynamicHeight(context, 0.06),
      margin: const EdgeInsets.symmetric(vertical: 12.0),
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: const [
          HomeCategoryItem(
            category: 0,
            icon: "",
            title: "All",
          ),
          HomeCategoryItem(
            category: 1,
            icon: "assets/images/snacks.svg",
            title: "Snacks",
          ),
          HomeCategoryItem(
            category: 2,
            icon: "assets/images/Beverages.svg",
            title: "Beverages",
          ),
          HomeCategoryItem(
            category: 3,
            icon: "assets/images/personalcare.svg",
            title: "Personal Care",
          ),
          HomeCategoryItem(
            category: 4,
            icon: "assets/images/smoke.svg",
            title: "Tobacco and Smoking Accessories",
          ),
          HomeCategoryItem(
            category: 5,
            icon: "assets/images/bakery.svg",
            title: "Bakery",
          ),
        ],
      ),
    );
  }
}
