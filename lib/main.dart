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
import 'package:firebase_core/firebase_core.dart';

import 'ui/views/sign_in/sign_in_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
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

    Get.put(AuthController());
    Get.put(NavigationController());
    Get.put(HomeController());
    Get.put(ThemeController());
    Get.put(DetailController());
    Get.put(CategoriesController());
    Get.put(SearchShoeController());
    Get.put(CartController());
    Get.put(CardsController());
    Get.put(ReviewController());
    Get.put(MessageController());
    Get.put(SettingsController());
    Get.put(TrackLocationController());

    runApp(const MyApp());
  } catch (e) {
    print("Error initializing app: $e");
    // Handle initialization error (e.g., show an error dialog, log the error, etc.)
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

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
