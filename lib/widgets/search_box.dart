import 'package:daily_task/constants/color.dart';
import 'package:daily_task/constants/text.dart';
import 'package:flutter/material.dart';

class SearchBox extends StatelessWidget {
  const SearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(0),
          prefixIcon: Icon(Icons.search, color: AppColors.black, size: 20),
          prefixIconConstraints: BoxConstraints(maxHeight: 20, minWidth: 20),
          border: InputBorder.none,
          hintText: AppTexts.search,
          hintStyle: TextStyle(color: AppColors.grey),
        ),
      ),
    );
  }
}