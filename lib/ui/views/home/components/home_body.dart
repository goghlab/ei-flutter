import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ei_autoshop/core/utils/base/base_controller.dart';
import 'package:ei_autoshop/core/utils/base/base_statefull.dart';
import 'package:ei_autoshop/core/utils/device_utils.dart';
import 'package:ei_autoshop/ui/views/home/components/home_category_list.dart';
import 'package:ei_autoshop/ui/views/home/components/home_filter_button.dart';
import 'package:ei_autoshop/ui/views/home/components/home_shoe_list.dart';
import 'package:ei_autoshop/ui/views/home/components/home_title.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({
    super.key,
  });

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends BaseState<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: DeviceUtils.getHeight(context),
      child: Stack(
        children: [
          Obx(() {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SlideInLeft(from: 10, child: const HomeTitle()),
                if (BaseController.homeController.isShowCategoryList.value)
                  FadeInDown(from: 10, child: const HomeCategoryList()),
                Expanded(
                    child: FadeInUp(from: 10, child: const HomeShoeList())),
              ],
            );
          }),
          Positioned(
            right: 0,
            top: 10,
            child: SlideInRight(from: 10, child: const HomeFilterButton()),
          ),
        ],
      ),
    );
  }
}
