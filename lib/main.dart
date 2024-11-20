import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splashintrologinhomesetup/views/screens/homepage.dart';
import 'package:splashintrologinhomesetup/views/screens/loginscreen.dart';
import 'package:splashintrologinhomesetup/views/screens/onboarding(intro)screen.dart';
import 'package:splashintrologinhomesetup/views/screens/splashscreen.dart';
import 'controller/appcontroller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(AppController()); // Initialize the controller
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/splash',
      getPages: [
        GetPage(name: '/splash', page: () => SplashScreen()),
        GetPage(name: '/onboarding', page: () => OnboardingScreen()),
        GetPage(name: '/login', page: () => LoginScreen()),
        GetPage(name: '/home', page: () => HomeScreen()),
      ],
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:splashintrologinhomesetup/views/screens/homepage.dart';
// import 'package:splashintrologinhomesetup/views/screens/loginscreen.dart';
// import 'package:splashintrologinhomesetup/views/screens/onboarding(intro)screen.dart';
// import 'package:splashintrologinhomesetup/views/screens/splashscreen.dart';
// import 'controller/appcontroller.dart';
//
// void main() {
//   Get.put(OnboardingController()); // Initialize the controller
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final OnboardingController controller = Get.find();
//
//
//     return Obx(() {
//       return GetMaterialApp(
//         initialRoute: '/splash',
//         // initialRoute: controller.isFirstLaunch.value ? '/splash' : '/onboarding',
//         getPages: [
//           GetPage(name: '/onboarding', page: () => OnboardingScreen()),
//           GetPage(name: '/splash', page: () => SplashScreen()),
//           GetPage(name: '/home', page: () => const HomeScreen()),
//           GetPage(name: '/loginscreen', page: () => LoginScreen()),
//         ],
//       );
//     // });
//   }
// }
