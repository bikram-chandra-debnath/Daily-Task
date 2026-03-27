import 'package:daily_task/common/buttons/icon_button.dart';
import 'package:daily_task/constants/color.dart';
import 'package:daily_task/constants/icons.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.title,
    this.isCompleted = false,
    required this.description,
    required this.onEdit,
    required this.onDelete, this.onChanged,
  });

  final String title, description;
  final bool isCompleted;
  final VoidCallback onEdit, onDelete;
  final Function(bool?)? onChanged;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          color: AppColors.white.withValues(alpha: isCompleted ? 0.5 : 1),
          decoration:
              isCompleted ? TextDecoration.lineThrough : TextDecoration.none,
          decorationColor: AppColors.grey,
        ),
      ),
      subtitle: Text(
        description,
        style: TextStyle(color: AppColors.grey),

        maxLines: 2,
        overflow: TextOverflow.ellipsis,
      ),
      leading: Checkbox(
        side: BorderSide(color: AppColors.white),
        activeColor: AppColors.primary.withValues(alpha: 0.3),
        checkColor: AppColors.white.withValues(alpha: 0.5),
        value: isCompleted ? true : false,
        onChanged: onChanged
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          isCompleted
              ? SizedBox()
              : AppIconButton(
                backgroundColor: Colors.transparent,
                onPressed: onEdit,
                icon: AppIcons.edit,
                padding: EdgeInsets.zero,
                minimumSize: Size(25, 25),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
          AppIconButton(
            backgroundColor: Colors.transparent,
            onPressed: onDelete,
            icon: AppIcons.delete,
            padding: EdgeInsets.zero,
            minimumSize: Size(25, 25),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            iconColor: AppColors.red,
          ),
        ],
      ),
    );
  }
}
