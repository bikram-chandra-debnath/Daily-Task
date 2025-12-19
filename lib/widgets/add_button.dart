import 'package:daily_task/constants/color.dart';
import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  const AddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: EdgeInsets.only(bottom: 20,right: 20),
      child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.blue,
        foregroundColor: AppColors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        minimumSize: Size(60, 60),
        elevation: 10,
        
      ), child: Text("+",style: TextStyle(fontSize: 40),),));
  }
}