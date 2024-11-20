import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/appcontroller.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AppController appController = Get.find();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome to the App! Onboarding Screen', style: TextStyle(fontSize: 18)),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                appController.completeOnboarding();
              },
              child: Text('Finish Onboarding'),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../controller/appcontroller.dart';
//
// class OnboardingScreen extends StatelessWidget {
//   final OnboardingController controller = Get.find();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Welcome to the App!"),
//             // ElevatedButton(
//             //   onPressed: () {
//             //     controller.setFirstLaunch();
//             //     Get.offAllNamed('/home');
//             //   },
//             //   child:  const Text("Get Started"),
//             // ),
//             ElevatedButton(
//               onPressed: () {
//                 controller.setFirstLaunch();
//                 Get.offAllNamed('/loginscreen');
//               },
//               child: const Text("Login"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
