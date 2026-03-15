import 'package:daily_task/constants/color.dart';
import 'package:daily_task/constants/text.dart';
import 'package:daily_task/controller/onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';

class TitleAndSubtitle extends StatelessWidget {
  const TitleAndSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    return Positioned(
      bottom: 180,
      left: 20,
      right: 20,
      child: Column(
        children: [
          // title
          Obx(
            () => Text(
              controller.currentPage.value == 0
                  ? AppTexts.onboardingTitle1
                  : controller.currentPage.value == 1
                  ? AppTexts.onboardingTitle2
                  : AppTexts.onboardingTitle3,
              style: TextStyle(
                color: AppColors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 30),
          // subtitle
          Obx(
            () => Text(
              controller.currentPage.value == 0
                  ? AppTexts.onboardingSubtitle1
                  : controller.currentPage.value == 1
                  ? AppTexts.onboardingSubtitle2
                  : AppTexts.onboardingSubtitle3,
              style: TextStyle(color: AppColors.white, fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
