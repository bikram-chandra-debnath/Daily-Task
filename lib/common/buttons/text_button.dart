import 'package:daily_task/constants/color.dart';
import 'package:flutter/material.dart';

class AppTextButton extends StatelessWidget {
  const AppTextButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.color = AppColors.grey,
    this.padding,
    this.fixedSize,
    this.tapTargetSize,
    this.minimumSize,
  });

  final VoidCallback onPressed;
  final Widget child;
  final Color color;
  final EdgeInsetsGeometry? padding;
  final Size? fixedSize;
  final MaterialTapTargetSize? tapTargetSize;
  final Size? minimumSize;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      
      onPressed: onPressed,
      style: TextButton.styleFrom(
       
        foregroundColor: color,
        padding: padding,
        fixedSize: fixedSize,
        tapTargetSize: tapTargetSize,
        minimumSize: minimumSize,


      ),
      child: child,
    );
  }
}
