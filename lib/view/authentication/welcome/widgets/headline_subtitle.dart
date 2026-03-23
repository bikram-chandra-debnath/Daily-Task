
import 'package:daily_task/constants/color.dart';
import 'package:daily_task/constants/text.dart';
import 'package:flutter/material.dart';

class HeadlineAndSubTitle extends StatelessWidget {
  const HeadlineAndSubTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        Align(
          alignment: Alignment.center,

          // Welcome  Headline 
          child: Text(
            AppTexts.welcomeTitle,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
          ),
        ),
        SizedBox(height: 20),

        Align(
          alignment: Alignment.center,

          // Subtiltle
          child: Text(
            AppTexts.welcomeSubtitle,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w200,
              color: AppColors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
