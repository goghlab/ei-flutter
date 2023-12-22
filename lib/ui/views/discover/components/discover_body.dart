import 'package:firebase_auth/firebase_auth.dart'; // Import FirebaseAuth

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';
import 'package:xam_shoes_app/ui/views/discover/components/user_qr_code_widget.dart';
import 'package:xam_shoes_app/ui/views/discover/components/discover_title.dart';

class DiscoverBody extends StatelessWidget {
  const DiscoverBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Retrieve the current signed-in user
    User? user = FirebaseAuth.instance.currentUser;

    // Extract user information
    String userId = user?.uid ?? ''; // Replace with actual user information

    return SizedBox(
      height: DeviceUtils.getHeight(context),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SlideInLeft(from: 10, child: const DiscoverTitle()),
          Expanded(
            child: FadeInUp(
              from: 10,
              // Replace DiscoverShoeList with UserQRCodeWidget
              child: UserQRCodeWidget(
                userId: userId,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
