import 'package:daily_task/constants/color.dart';
import 'package:daily_task/constants/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
            (context, index) => ListTile(
              title: Text(
                "Study lesson",
                style: TextStyle(color: AppColors.white),
              ),
              leading: CircleAvatar(
                backgroundColor: Colors.amber,
                child: SvgPicture.asset(AppIcons.apple),
              ),
              trailing: Checkbox(
                side: BorderSide(color: AppColors.white),
                value: false,
                onChanged: (value) {},
              ),
            ),
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
