import 'package:daily_task/constants/color.dart';
import 'package:daily_task/constants/text.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(
      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
      margin: EdgeInsets.only(bottom: 20,right: 20,left: 20),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const[
          BoxShadow(
            color: AppColors.grey,
            offset: Offset(0.0, 0.0),
            blurRadius: 10.0,
            spreadRadius: 0.0,
          )
        ],
        
        
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: AppTexts.addNewTask,
          border: InputBorder.none,
    
        ),
      ),
    ));
  }
}