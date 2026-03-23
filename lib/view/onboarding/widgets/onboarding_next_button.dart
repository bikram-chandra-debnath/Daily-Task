
import 'package:daily_task/common/buttons/elevated_button.dart';
import 'package:daily_task/constants/text.dart';
import 'package:daily_task/controller/onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    super.key,
  });


  @override
  Widget build(BuildContext context) {

    final controller = OnboardingController.instance;
    return Positioned(
      bottom: 20,
      right: 20,
      child: Obx(
        ()=> SizedBox(
          width:controller.currentPage.value==2?150: 100,
          child: AppElevatedButton(
            onPressed: () {
              controller.onNext();
            },
            child: Text( controller.currentPage.value==2? AppTexts.getStartedCapital: AppTexts.nextCapital),
          ),
        ),
      ),
    );
  }
}