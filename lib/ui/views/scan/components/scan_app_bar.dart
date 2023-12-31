// ignore_for_file: avoid_field_initializers_in_const_classes

/*
Author: XamDesign
Date: 30.05.2023
*/

import 'package:flutter/material.dart';

import 'package:ei_autoshop/core/constants/color_constants.dart';
import 'package:ei_autoshop/core/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:ei_autoshop/core/widgets/custom_app_bar/custom_app_bar_back_button.dart';

class ScanAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const ScanAppBar({
    super.key,
  }) : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return const CustomAppBar(
      title: "SCAN",
      titleColor: kWhiteColor,
      leading: CustomAppBarBackButton(isTransparent: false),
      isTransparent: true,
    );
  }
}
