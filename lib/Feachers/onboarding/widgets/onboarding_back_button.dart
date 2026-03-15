
import 'package:daily_task/common/buttons/text_button.dart';
import 'package:daily_task/constants/text.dart';
import 'package:daily_task/controller/onboarding/onboarding_controller.dart';
import 'package:flutter/material.dart';

class Backbutton extends StatelessWidget {
  const Backbutton({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;
    return Positioned(
      bottom: 20,
      left: 20,
      child: AppTextButton(
        onPressed: ()=> controller.onBack(),
        child: Text(AppTexts.backCapital),
      ),
    );
  }
}
