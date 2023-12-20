import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart'; // Make sure to import flutter/material.dart
import 'package:get/get_utils/get_utils.dart';
import 'package:xam_shoes_app/core/constants/color_constants.dart';
import 'package:xam_shoes_app/core/utils/device_utils.dart';

class CustomSubmitButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;

  const CustomSubmitButton({
    required this.title,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "checkout_button",
      child: Container(
        width: DeviceUtils.getWidth(context),
        margin: const EdgeInsets.symmetric(vertical: 12.0),
        child: CupertinoButton(
          onPressed: onTap,
          color: Colors.black,
          padding: const EdgeInsets.symmetric(vertical: 18.0),
          // Remove the borderRadius property to make the button square
          child: Text(
            title,
            style: context.textTheme.bodyLarge?.copyWith(
              color: kWhiteColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
