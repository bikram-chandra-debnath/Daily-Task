import 'package:daily_task/common/appbar/custom_appbar.dart';
import 'package:daily_task/common/buttons/icon_button.dart';
import 'package:daily_task/constants/color.dart';
import 'package:daily_task/constants/icons.dart';
import 'package:daily_task/constants/images.dart';
import 'package:daily_task/constants/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class UpperHeading extends StatelessWidget {
  const UpperHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96,
      color: AppColors.primary,
      child: Stack(
        children: [
          // Custom Designs
          Positioned(
            bottom: 0,
            left: 0,
            child: SvgPicture.asset(AppImages.circleLeft),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: SvgPicture.asset(AppImages.circleRight),
          ),

          // AppBar
          CustomAppBar(
            padding: EdgeInsetsGeometry.symmetric(horizontal: 12),
            leading: AppIconButton(
              onPressed: () => Get.back(),
              icon: AppIcons.cross,
            ),
            title: Text(
              AppTexts.addNewTask,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
