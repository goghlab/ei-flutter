import 'package:flutter/material.dart';

class SplashLogo extends StatelessWidget {
  const SplashLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Image.asset(
        "assets/images/eilogo.png",
        width: 200, // Set the width to the desired size
        height: 200, // Set the height to the desired size
      ),
    );
  }
}
