import 'package:daily_task/constants/color.dart';
import 'package:flutter/material.dart';

class AppOutlinedButton extends StatelessWidget {
  const AppOutlinedButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.borderRadius = 5,
    this.borderWidth = 1,
    this.foregroundColor = AppColors.white,
    this.backgroundColor = Colors.transparent,
    this.borderColor = AppColors.primary,
  });

  final VoidCallback onPressed;
  final Widget child;
  final double borderRadius, borderWidth;
  final Color foregroundColor, backgroundColor, borderColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(borderRadius),

            side: BorderSide(width: borderWidth, color: borderColor),
          ),
          backgroundColor: backgroundColor,
          foregroundColor: foregroundColor,
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
