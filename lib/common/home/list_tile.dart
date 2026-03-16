import 'package:daily_task/constants/color.dart';
import 'package:daily_task/constants/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key, required this.title,  this.isCompleted=false,
  });

 final String title;
 final bool isCompleted;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        "Study lesson",
        style: TextStyle(
          color: AppColors.white.withValues(
            alpha: isCompleted? 0.5:1,
          ),
          decoration:isCompleted? TextDecoration.lineThrough:TextDecoration.none,
          decorationColor: AppColors.white,
        ),
      ),
      leading: CircleAvatar(
        backgroundColor: Colors.amber.withValues(
          alpha:isCompleted? 0.5 : 1,
        ),
        child: Opacity(
          opacity:  isCompleted? 0.5:1,
          child: SvgPicture.asset(AppIcons.apple),
        ),
      ),
      trailing: Checkbox(
        side: BorderSide(color: AppColors.white),
        activeColor: AppColors.primary,
        value:isCompleted? true:false,
        onChanged: (value) {},
      ),
    );
  }
}
