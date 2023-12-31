// ignore_for_file: avoid_field_initializers_in_const_classes

/*
Author: XamDesign
Date: 30.05.2023
*/

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:ei_autoshop/core/translations/translation_keys.dart';
import 'package:ei_autoshop/core/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:ei_autoshop/core/widgets/custom_app_bar/custom_app_bar_back_button.dart';
import 'package:ei_autoshop/core/widgets/custom_app_bar/custom_app_bar_notification_button.dart';

class CategoriesAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const CategoriesAppBar({
    super.key,
  }) : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: TranslationKeys.category.tr.toUpperCase(),
      leading: const CustomAppBarBackButton(),
      trailing: const CustomAppBarNotificationButton(),
    );
  }
}
