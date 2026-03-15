import 'package:daily_task/constants/color.dart';
import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    super.key,
    required this.onPressed,
     this.backgroundColor=AppColors.primary,
     this.foregroundColor=AppColors.white,
     this.borderRadius=5,
    required this.child,
  });

  final VoidCallback onPressed;
  final Color backgroundColor, foregroundColor;
  final double borderRadius;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        foregroundColor: foregroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(borderRadius),
        ),
      ),
      child: child,
    );
  }
}