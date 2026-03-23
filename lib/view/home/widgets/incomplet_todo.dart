import 'package:daily_task/common/home/list_tile.dart';
import 'package:daily_task/constants/color.dart';
import 'package:flutter/material.dart';

class IncompletToDo extends StatelessWidget {
  const IncompletToDo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.darkgrey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListView.separated(
        padding: EdgeInsets.zero,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder:
            (context, index) => CustomListTile(title: "Study lesson",),
        separatorBuilder:
            (context, index) => Divider(
              color: AppColors.grey,
              height: 0,
              thickness: 0.4,
              indent: 5,
              endIndent: 5,
            ),
        itemCount: 10,
      ),
    );
  }
}
