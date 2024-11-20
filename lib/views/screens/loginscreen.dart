import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/appcontroller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final AppController appController = Get.find();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Login Screen', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                appController.login();
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
//
// class LoginScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Login Screen'),
//             ElevatedButton(
//               onPressed: () {
//
//               },
//               child: Text('Login'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
