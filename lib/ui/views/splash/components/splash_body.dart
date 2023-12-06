import 'package:flutter/material.dart';
import 'package:xam_shoes_app/ui/views/splash/components/splash_logo.dart';
import 'package:xam_shoes_app/ui/views/splash/components/splash_title.dart';

class SplashBody extends StatelessWidget {
  const SplashBody({Key? key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black, 
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SplashLogo(),
            SplashTitle(),
          ],
        ),
      ),
    );
  }
}
