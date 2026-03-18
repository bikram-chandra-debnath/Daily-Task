
import 'package:daily_task/Feachers/add%20task/widgets/category_button.dart';
import 'package:daily_task/constants/color.dart';
import 'package:daily_task/constants/icons.dart';
import 'package:daily_task/constants/text.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 12,
      children: [
        Text(
          AppTexts.category,
          style: TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        CategoryButton(
          icon: AppIcons.page,
          backgroundColor: AppColors.buttonBackground1,
          onPressed: () {},
        ),
        CategoryButton(
          icon: AppIcons.calender,
          backgroundColor: AppColors.buttonBackground2,
          onPressed: () {},
        ),
        CategoryButton(
          icon: AppIcons.troffe,
          backgroundColor: AppColors.buttonBackground3,
          onPressed: () {},
        ),
      ],
    );
  }
}


