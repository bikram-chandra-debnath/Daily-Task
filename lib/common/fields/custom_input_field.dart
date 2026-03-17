import 'package:daily_task/common/fields/input_field.dart';
import 'package:daily_task/constants/color.dart';
import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  const CustomInputField({
    super.key,
    required this.lableText,
    this.hintText,
    this.obscureText = false,
    this.controller,
    this.contentPadding = const EdgeInsets.only(bottom: 10, left: 10),
    this.suffix,
    this.maxLine = 1,
  });

  final String lableText;
  final String? hintText;
  final bool obscureText;
  final TextEditingController? controller;
  final EdgeInsetsGeometry contentPadding;
  final Widget? suffix;
  final int maxLine;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lableText,
          style: TextStyle(color: AppColors.white, fontWeight: FontWeight.w600),
        ),
        SizedBox(height: 10),

        AppInputField(
          maxLine: maxLine,
          contentPadding: contentPadding,
          controller: controller,
          hintText: hintText,
          obscureText: obscureText,
          suffix: suffix,
        ),
      ],
    );
  }
}
