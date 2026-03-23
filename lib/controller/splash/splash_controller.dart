import 'dart:async';
import 'package:daily_task/view/onboarding/Screens/onboarding.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  static SplashController get instance => Get.find();

  @override
  void onInit() {
    super.onInit();
    Timer(Duration(seconds: 3), () => Get.offAll(OnBoarding()));
  }
}
