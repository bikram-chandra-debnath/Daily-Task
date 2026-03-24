import 'package:daily_task/constants/color.dart';
import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({
    super.key,
    this.height,
    this.width,
     this.color = AppColors.darkgrey,
     this.borderRadius= 20,
    this.child,
    this.margin,
    this.padding,
  });

  final double? height, width;
  final Color color;
  final double borderRadius;
  final Widget? child;
  final EdgeInsetsGeometry? margin, padding;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      padding: padding,
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: child,
    );
  }
}
