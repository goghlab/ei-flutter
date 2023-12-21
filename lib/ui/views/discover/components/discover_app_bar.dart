import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/translations/translation_keys.dart';
import 'package:xam_shoes_app/core/widgets/custom_app_bar/custom_app_bar.dart';
import 'package:xam_shoes_app/core/widgets/custom_app_bar/custom_app_bar_notification_button.dart';
import 'package:xam_shoes_app/ui/views/search/search_screen.dart';

class DiscoverAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const DiscoverAppBar({
    super.key,
  }) : preferredSize = const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: TranslationKeys.qrCode.tr.toUpperCase(),
      trailing: CustomAppBarNotificationButton(
        icon: "assets/images/menu.svg",
        onPressed: () => Get.to(() => const SearchScreen()),
      ),
    );
  }
}
