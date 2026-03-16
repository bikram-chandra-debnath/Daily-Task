
import 'package:daily_task/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
    this.backgroundColor = AppColors.black,
    this.padding,
    this.minimumSize,
    this.tapTargetSize,
    this.foregroundColor,
    this.iconSize,
  });

  final VoidCallback onPressed;
  final String icon;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final Size? minimumSize;
  final MaterialTapTargetSize? tapTargetSize;
  final Color? foregroundColor;
  final double? iconSize;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      style: IconButton.styleFrom(
        
        backgroundColor: backgroundColor,
        padding: padding,
        minimumSize: minimumSize,
        tapTargetSize: tapTargetSize,
        foregroundColor: foregroundColor,
        iconSize: iconSize,
      ),

      onPressed: onPressed,
      icon: SvgPicture.asset(icon),
    );
  }
}
