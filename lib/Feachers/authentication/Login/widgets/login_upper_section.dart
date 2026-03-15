import 'package:daily_task/constants/color.dart';
import 'package:daily_task/constants/text.dart';
import 'package:flutter/material.dart';

class LoginUpperSection extends StatelessWidget {
  const LoginUpperSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      AppTexts.login,
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: AppColors.white,
      ),
    );
  }
}

