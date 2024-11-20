import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Splash Screen', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:splashintrologinhomesetup/controller/appcontroller.dart';
//
// class SplashScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     OnboardingController onboardingController = Get.put(OnboardingController());
//     // Future.delayed(const Duration(seconds: 3), () {
//     //   (onboardingController.isFirstLaunch.value)
//     //       ? Get.offAllNamed(
//     //           '/onboarding',
//     //         )
//     //       : Get.offNamed('/home');
//     //
//     //   // Navigate to home after splash
//     // });
//
//     return Scaffold(
//       body: Column(
//         children: [
//           const Center(
//             child: Text(
//               "Splash Screen",
//             ),
//           ),
//           ElevatedButton(
//             onPressed: () {
//               onboardingController.isFirstLaunch.value
//                   ? Get.offAllNamed('/onboarding')
//                   : Get.offAllNamed('/home');
//               // : Get.offAndToNamed('/loginscreen');
//               onboardingController.setFirstLaunch();
//               // Get.offAllNamed('/home'); // Navigate to splash screen
//             },
//             child: const Text(
//               "Get Started",
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
