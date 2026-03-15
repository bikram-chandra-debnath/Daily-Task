
import 'package:daily_task/constants/color.dart';
import 'package:flutter/material.dart';

class AppInputField extends StatelessWidget {
  const AppInputField({
    super.key,
    this.hintText,
    this.contentPadding = const EdgeInsets.only(bottom: 10, left: 10),
    this.obscureText = false,
    this.controller,
  });

  final String? hintText;
  final EdgeInsetsGeometry contentPadding;
  final bool obscureText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: Color(0xff1D1D1D),
        borderRadius: BorderRadius.circular(4),
        border: Border(
          bottom: BorderSide(width: 0.4, color: AppColors.border),
          top: BorderSide(width: 0.4, color: AppColors.border),
          left: BorderSide(width: 0.4, color: AppColors.border),
          right: BorderSide(width: 0.4, color: AppColors.border),
        ),
      ),
      child: Center(
        child: TextFormField(
          controller: controller,
          obscureText: obscureText,
        
          cursorColor: AppColors.white,
          cursorWidth: 0.5,
          cursorHeight: 15,
          style: TextStyle(color: AppColors.white),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: TextStyle(color: AppColors.grey, fontWeight: FontWeight.w400),
            contentPadding: contentPadding,
            border: OutlineInputBorder(borderSide: BorderSide.none),
            disabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
            focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
            errorBorder: OutlineInputBorder(borderSide: BorderSide.none),
            focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide.none),
          ),
        ),
      ),
    );
  }
}
