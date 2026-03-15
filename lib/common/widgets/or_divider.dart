
import 'package:daily_task/constants/color.dart';
import 'package:flutter/material.dart';


class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(endIndent: 6, indent: 10)),
        Text("Or", style: TextStyle(color: AppColors.grey)),
        Expanded(child: Divider(indent: 6, endIndent: 10)),
      ],
    );
  }
}


