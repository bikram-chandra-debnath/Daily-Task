import 'package:daily_task/view/onboarding/widgets/onboarding_back_button.dart';
import 'package:daily_task/view/onboarding/widgets/onboarding_dot_indicator.dart';
import 'package:daily_task/view/onboarding/widgets/onboarding_next_button.dart';
import 'package:daily_task/view/onboarding/widgets/onboarding_page.dart';
import 'package:daily_task/view/onboarding/widgets/onboarding_skip_button.dart';
import 'package:daily_task/view/onboarding/widgets/title_and_subtitle.dart';
import 'package:daily_task/constants/color.dart';
import 'package:daily_task/constants/images.dart';
import 'package:daily_task/constants/text.dart';
import 'package:daily_task/controller/onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: (value) => controller.onPageChange(value),
            children: [
              OnboardingPage(
                image: AppImages.onboardingImage1,
                title: AppTexts.onboardingTitle1,
                subtitle: AppTexts.onboardingSubtitle1,
              ),
              OnboardingPage(
                image: AppImages.onboardingImage2,
                title: AppTexts.onboardingTitle2,
                subtitle: AppTexts.onboardingSubtitle2,
              ),
              OnboardingPage(
                image: AppImages.onboardingImage3,
                title: AppTexts.onboardingTitle3,
                subtitle: AppTexts.onboardingSubtitle3,
              ),
            ],
          ),

          // indicator
          OnboardingIndicator(),

          // title and subtitle
          TitleAndSubtitle(),
          // SKIP  Button
          SkipButton(),
          // back Button
          Backbutton(),
          // elevated button
          NextButton(),
        ],
      ),
    );
  }
}
