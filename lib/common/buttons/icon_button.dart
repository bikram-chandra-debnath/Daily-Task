
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
    this.iconSize=16,  this.iconColor= AppColors.white,
  });
  
  final VoidCallback onPressed;
  final String icon;
  final Color backgroundColor;
  final EdgeInsetsGeometry? padding;
  final Size? minimumSize;
  final MaterialTapTargetSize? tapTargetSize;
  final Color iconColor;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: IconButton(
        style: IconButton.styleFrom(
          backgroundColor: backgroundColor,
          padding: padding,
          minimumSize: minimumSize,
          tapTargetSize: tapTargetSize,
        ),
        onPressed: onPressed,
        // ignore: deprecated_member_use
        icon: SvgPicture.asset(icon, color: iconColor,height: iconSize,width: iconSize,),
      ),
    );
  }
}
