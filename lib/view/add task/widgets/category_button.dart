import 'package:daily_task/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({
    super.key,
    this.buttonSize = 38,
    this.backgroundColor = AppColors.primary,
    required this.icon,
    required this.onPressed,
  });

  final double buttonSize;
  final Color backgroundColor;
  final String icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(1.5),
        height: buttonSize,
        width: buttonSize,
        decoration: BoxDecoration(
          color: AppColors.border,
          shape: BoxShape.circle,
        ),
        child: CircleAvatar(
          backgroundColor: backgroundColor,
          child: SvgPicture.asset(icon),
        ),
      ),
    );
  }
}
