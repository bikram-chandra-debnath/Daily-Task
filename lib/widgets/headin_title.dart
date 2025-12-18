import 'package:daily_task/constants/text.dart';
import 'package:flutter/material.dart';

class HeadingTitle extends StatelessWidget {
  const HeadingTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50, bottom: 20),

      child: Text(
        AppTexts.allToDo,
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
      ),
    );
  }
}