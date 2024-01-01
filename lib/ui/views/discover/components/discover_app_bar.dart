// discover_app_bar.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ei_autoshop/core/translations/translation_keys.dart';
import 'package:ei_autoshop/core/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:ei_autoshop/core/widgets/custom_app_bar/custom_app_bar_notification_button.dart';
import 'package:ei_autoshop/ui/views/search/search_screen.dart';

class DiscoverAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const DiscoverAppBar({
    Key? key,
  }) : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: TranslationKeys.qrCode.tr.toUpperCase(),
      textColor: Colors.black, // Set the text color to black
      trailing: CustomAppBarNotificationButton(
        icon: "assets/images/menu.svg",
        onPressed: () => Get.to(() => const SearchScreen()),
      ),
    );
  }
}
