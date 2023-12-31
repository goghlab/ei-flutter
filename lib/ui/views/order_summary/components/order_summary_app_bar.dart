// ignore_for_file: avoid_field_initializers_in_const_classes

/*
Author: XamDesign
Date: 7.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ei_autoshop/core/translations/translation_keys.dart';
import 'package:ei_autoshop/core/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:ei_autoshop/core/widgets/custom_app_bar/custom_app_bar_back_button.dart';

class OrderSummaryAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const OrderSummaryAppBar({
    super.key,
  }) : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: TranslationKeys.orderSummary.tr.toUpperCase(),
      leading: const CustomAppBarBackButton(),
    );
  }
}
