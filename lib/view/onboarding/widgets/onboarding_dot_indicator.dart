
import 'package:daily_task/constants/color.dart';
import 'package:daily_task/controller/onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingIndicator extends StatelessWidget {
  const OnboardingIndicator({
    super.key,
  });

  

  @override
  Widget build(BuildContext context) {
    final  controller= OnboardingController.instance;
    return Positioned(
      left: 125,
      bottom: 350,
      
      child: SmoothPageIndicator(
        onDotClicked: (index) => controller.indicatorDoClick(index),
        effect: CustomizableEffect(dotDecoration: DotDecoration(
          borderRadius: BorderRadius.circular(20),
          width: 30,
          height: 4,
          color: AppColors.grey,
        ), activeDotDecoration: DotDecoration(borderRadius: BorderRadius.circular(20),
          width: 30,
          height: 4,
          color: AppColors.white,)),
        controller: controller.pageController, count: 3));
  }
}