import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:xam_shoes_app/core/constants/string_constants.dart';
import 'package:xam_shoes_app/core/constants/theme_constants.dart';
import 'package:xam_shoes_app/core/controllers/auth/auth_controller.dart';
import 'package:xam_shoes_app/core/controllers/cards/cards_controller.dart';
import 'package:xam_shoes_app/core/controllers/cart/cart_controller.dart';
import 'package:xam_shoes_app/core/controllers/categories/categories_controller.dart';
import 'package:xam_shoes_app/core/controllers/detail/detail_controller.dart';
import 'package:xam_shoes_app/core/controllers/home/home_controller.dart';
import 'package:xam_shoes_app/core/controllers/message/message_controller.dart';
import 'package:xam_shoes_app/core/controllers/navigation/navigation_controller.dart';
import 'package:xam_shoes_app/core/controllers/review/review_controller.dart';
import 'package:xam_shoes_app/core/controllers/search/search_shoe_controller.dart';
import 'package:xam_shoes_app/core/controllers/settings/settings_controller.dart';
import 'package:xam_shoes_app/core/controllers/theme/theme_controller.dart';
import 'package:xam_shoes_app/core/controllers/track_location/track_location_controller.dart';
import 'package:xam_shoes_app/core/translations/languages.dart';
import 'package:xam_shoes_app/ui/views/splash/splash_screen.dart';
import 'package:firebase_core/firebase_core.dart'; // Import Firebase Core

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: "AIzaSyCG5pVt5fXPgHUeqpsxbpTt702cg6leJKU",
      authDomain: "ei-website-103a4.firebaseapp.com",
      databaseURL: "https://ei-website-103a4-default-rtdb.asia-southeast1.firebasedatabase.app",
      projectId: "ei-website-103a4",
      storageBucket: "ei-website-103a4.appspot.com",
      messagingSenderId: "609909198676",
      appId: "1:609909198676:web:88fe2d7d886e6eb17202c1",
      measurementId: "G-HZQ5QYRXQX",
    ),
  );

  Get
    ..put(AuthController())
    ..put(NavigationController())
    ..put(HomeController())
    ..put(ThemeController())
    ..put(DetailController())
    ..put(CategoriesController())
    ..put(SearchShoeController())
    ..put(CartController())
    ..put(CardsController())
    ..put(ReviewController())
    ..put(MessageController())
    ..put(SettingsController())
    ..put(TrackLocationController());
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: GetMaterialApp(
        title: appName,
        debugShowCheckedModeBanner: false,
        translations: Languages(),
        locale: Get.deviceLocale,
        fallbackLocale: const Locale("en", "US"),
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: ThemeMode.light,
        home: const SplashScreen(),
      ),
    );
  }
}
