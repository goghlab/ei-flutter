
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ei_autoshop/core/translations/translation_keys.dart';
import 'package:ei_autoshop/core/utils/base/base_controller.dart';
import 'package:ei_autoshop/core/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:ei_autoshop/core/widgets/custom_app_bar/custom_app_bar_button.dart';
import 'package:ei_autoshop/core/widgets/custom_theme_switcher/custom_theme_switcher.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: "EVERYTHING INTELLIGENCE", 
      leading: CustomAppBarButton(
        icon: "assets/images/drawer_menu.svg",
        onPressed: () {
          HapticFeedback.lightImpact();
          BaseController
              .navigationController.navigationScaffoldKey.currentState!
              .openDrawer();
        },
      ),
    );
  }
}