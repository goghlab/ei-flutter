// ignore_for_file: avoid_field_initializers_in_const_classes

/*
Author: XamDesign
Date: 8.06.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ei_autoshop/core/translations/translation_keys.dart';
import 'package:ei_autoshop/core/utils/base/base_stateless.dart';
import 'package:ei_autoshop/core/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:ei_autoshop/core/widgets/custom_app_bar/custom_app_bar_back_button.dart';

class CardsAppBar extends BaseStatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const CardsAppBar({
    super.key,
  }) : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: TranslationKeys.cards.tr.toUpperCase(),
      leading: const CustomAppBarBackButton(),
    );
  }
}
