import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    initializeApp();
  }

  Future<void> initializeApp() async {
    await Future.delayed(
      const Duration(
        seconds: 5,
      ),
    ); // Simulate splash screen delay
    final prefs = await SharedPreferences.getInstance();

    // Check stored states
    bool isOnboardingCompleted = prefs.getBool('onboardingCompleted') ?? false;
    bool isLoggedIn = prefs.getBool('isLoggedIn') ?? false;

    if (!isOnboardingCompleted) {
      Get.offAllNamed('/onboarding');
    } else if (!isLoggedIn) {
      Get.offAllNamed('/login');
    } else {
      Get.offAllNamed('/home');
    }
  }

  Future<void> completeOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('onboardingCompleted', true);
    Get.offAllNamed(
      '/login',
    ); // Navigate to login after onboarding(Introscreen):
  }

  Future<void> login() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', true);
    Get.offAllNamed('/home'); // Navigate to home after login
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', false);
    Get.offAllNamed('/login'); // Navigate to login after logout
  }
}

// import 'package:get/get.dart';
// import 'package:shared_preferences/shared_preferences.dart';
//
// class OnboardingController extends GetxController {
//   var isFirstLaunch = true.obs;
//
//   @override
//   void onInit() {
//     super.onInit();
//     checkFirstLaunch();
//   }
//
//   void checkFirstLaunch() async {
//     final prefs = await SharedPreferences.getInstance();
//     isFirstLaunch.value = prefs.getBool('isFirstLaunch') ?? true;
//   }
//
//   Future<void> setFirstLaunch() async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setBool('isFirstLaunch', false);
//   }
// }
