
import 'package:daily_task/constants/color.dart';
import 'package:daily_task/constants/images.dart';
import 'package:daily_task/controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  

  @override
  Widget build(BuildContext context) {

    Get.put(SplashController());
    
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Center(
        child: SvgPicture.asset(AppImages.splashLogo),
      ),
    );
  }
}




