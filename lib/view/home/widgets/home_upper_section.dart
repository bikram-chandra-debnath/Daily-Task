
import 'package:daily_task/common/appbar/custom_appbar.dart';
import 'package:daily_task/constants/color.dart';
import 'package:daily_task/constants/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class UpperSection extends StatelessWidget {
  const UpperSection({super.key});

  @override
  Widget build(BuildContext context) {
    String formattedDate = DateFormat('d MMMM yyyy').format(DateTime.now());


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
                  "My Todo List",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                  ),
                ),
                  
                ),

                SizedBox(height: 20),
                Text(
                    formattedDate,
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
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
