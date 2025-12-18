import 'package:daily_task/constants/color.dart';
import 'package:daily_task/model/todo_model.dart';
import 'package:flutter/material.dart';

class TodoItems extends StatelessWidget {
  
  const TodoItems({super.key,required this.todo });
  final TodoModel todo;



  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
        onTap: () {
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        tileColor: AppColors.white,
        leading: Checkbox(value: todo.isDone?true:false  , onChanged: (value) {}),
        title: Text(
          todo.todoText!,
          style: TextStyle(
            fontSize: 16,
            color: AppColors.black,
            decoration: todo.isDone? TextDecoration.lineThrough:null,
          ),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(Icons.delete, color: AppColors.red),
        ),
      ),
    );
  }
}


