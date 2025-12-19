import 'package:daily_task/constants/color.dart';
import 'package:daily_task/constants/images.dart';
import 'package:daily_task/constants/text.dart';
import 'package:daily_task/model/todo_model.dart';
import 'package:daily_task/widgets/headin_title.dart';
import 'package:daily_task/widgets/search_box.dart';
import 'package:daily_task/widgets/todo_items.dart';
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
                Expanded(child: Container(
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
                )),

                Container(
                  
                  margin: EdgeInsets.only(bottom: 20,right: 20),
                  child: ElevatedButton(onPressed: (){}, child: Text("+",style: TextStyle(fontSize: 40),),style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.blue,
                    foregroundColor: AppColors.white,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    minimumSize: Size(60, 60),
                    elevation: 10,
                    
                  ),))
              ],
             
            ),
          ),
        ],
      ),
    );
  }
}

class TodoListWithTitle extends StatelessWidget {
  TodoListWithTitle({super.key});

  final todolist = TodoModel.todoList();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          // Heading title
          HeadingTitle(),

          // To Do Lists
          for (TodoModel todoModel in todolist) TodoItems(todo: todoModel),
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
