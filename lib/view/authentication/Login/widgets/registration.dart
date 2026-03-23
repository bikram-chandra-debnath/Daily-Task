
import 'package:daily_task/common/buttons/text_button.dart';
import 'package:daily_task/constants/color.dart';
import 'package:daily_task/constants/text.dart';
import 'package:flutter/material.dart';

class Registration extends StatelessWidget {
  const Registration({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          AppTexts.donotHaveAccount,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.grey,
          ),
        ),
        SizedBox(width: 2),
        AppTextButton(
          onPressed: () {},
          color: AppColors.white,
          padding: EdgeInsets.zero,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: Size.zero,
          child: Text(AppTexts.register),
        ),
      ],
    );
  }
}
