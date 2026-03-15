
import 'package:daily_task/common/buttons/text_button.dart';
import 'package:daily_task/constants/text.dart';
import 'package:daily_task/controller/onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    return Positioned(
      top: 40,
      left: 20,
      child: Obx(
        ()=> controller.currentPage.value==2? SizedBox(): AppTextButton(
          onPressed: ()=> controller.onSkip(),
          child: Text(AppTexts.skipCapital),
        ),
      ),
    );
  }
}