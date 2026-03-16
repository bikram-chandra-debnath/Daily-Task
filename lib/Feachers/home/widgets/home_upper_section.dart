
import 'package:daily_task/common/appbar/custom_appbar.dart';
import 'package:daily_task/common/buttons/icon_button.dart';
import 'package:daily_task/constants/color.dart';
import 'package:daily_task/constants/icons.dart';
import 'package:daily_task/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UpperSection extends StatelessWidget {
  const UpperSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 222,
      width: double.maxFinite,
      decoration: BoxDecoration(color: AppColors.primary),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            child: SvgPicture.asset(AppImages.circleLeft),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: SvgPicture.asset(AppImages.circleRight),
          ),

          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomAppBar(
                  // padding: EdgeInsetsGeometry.zero,
                  title: const Text(
                    "October 20, 2022",
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  leading: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: AppIconButton(
                      padding: EdgeInsets.all(15),
                      //backgroundColor: Colors.transparent,
                      onPressed: () {},

                      icon: AppIcons.back,
                    ),
                  ),
                ),

                SizedBox(height: 10),

                Text(
                  "My Todo List",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
