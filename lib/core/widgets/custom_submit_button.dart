import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:ei_autoshop/core/constants/color_constants.dart';
import 'package:ei_autoshop/core/utils/device_utils.dart';

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
    Color buttonColor = Color(0xFF008DFF); // Use the hex color code

    return Hero(
      tag: "checkout_button",
      child: Container(
        width: DeviceUtils.getWidth(context),
        margin: const EdgeInsets.symmetric(vertical: 12.0),
        child: CupertinoButton(
          onPressed: onTap,
          color: buttonColor,
          padding: const EdgeInsets.symmetric(vertical: 18.0),
          // Remove the borderRadius property to make the button square
          child: Text(
            title,
            style: context.textTheme.bodyLarge?.copyWith(
              color: Colors.white, // Set to white color
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
