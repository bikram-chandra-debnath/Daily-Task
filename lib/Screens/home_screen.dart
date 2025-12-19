import 'package:daily_task/constants/color.dart';
import 'package:daily_task/constants/images.dart';
import 'package:daily_task/widgets/add_button.dart';
import 'package:daily_task/widgets/input_filed.dart';
import 'package:daily_task/widgets/search_box.dart';
import 'package:daily_task/widgets/todo_title_and_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: customAppbar(),

      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),

            child: Column(
              children: [
                // searchbar
                SearchBox(),
                // Task list and title
                TodoListWithTitle(),
              ],
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              children: [
                //custom text field
                InputField(),
                // custom button
                AddButton()
              ],
             
            ),
          ),
        ],
      ),
    );
  }
}







AppBar customAppbar() {
  return AppBar(
    backgroundColor: AppColors.background,
    elevation: 0,
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.menu, color: AppColors.black, size: 30),
        SizedBox(
          height: 40,
          width: 40,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image(
              image: AssetImage(AppImages.profile),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    ),
  );
}
