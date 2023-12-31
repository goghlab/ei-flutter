import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:ei_autoshop/core/utils/device_utils.dart';

class HomeCarousel extends StatelessWidget {
  const HomeCarousel({Key? key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: DeviceUtils.getDynamicWidth(context, 0.07),
        vertical: DeviceUtils.getDynamicWidth(context, 0.04),
      ),
      child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 16 / 9,
          viewportFraction: 1,
          initialPage: 0,
          enlargeCenterPage: false,
          autoPlay: false,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
        ),
        items: [
          'assets/images/001.png',
          'assets/images/001.png',
          // Add more image paths as needed
        ].map((e) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(24.0),
            child: Image.asset(
              e,
              width: DeviceUtils.getWidth(context),
              height: DeviceUtils.getDynamicHeight(context, 0.2),
              fit: BoxFit.fitWidth,
            ),
          );
        }).toList(),
      ),
    );
  }
}
