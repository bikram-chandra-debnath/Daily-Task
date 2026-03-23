
import 'package:daily_task/common/home/list_tile.dart';
import 'package:daily_task/constants/color.dart';
import 'package:daily_task/constants/text.dart';
import 'package:flutter/material.dart';

class CompletedTodo extends StatelessWidget {
  const CompletedTodo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text(
      AppTexts.completed,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    ),
    SizedBox(height: 20),
    Container(
      decoration: BoxDecoration(
        color: AppColors.darkgrey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListView.separated(
        padding: EdgeInsets.zero,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder:
            (context, index) => CustomListTile(title: 'Study lesson',isCompleted: true,),
        separatorBuilder:
            (context, index) => Divider(
              color: AppColors.grey,
              height: 0,
              thickness: 0.4,
              indent: 5,
              endIndent: 5,
            ),
        itemCount: 3,
      ),
    ),
    ],);
  }
}

