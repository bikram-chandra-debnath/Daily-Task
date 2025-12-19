

import 'package:daily_task/model/todo_model.dart';
import 'package:daily_task/widgets/headin_title.dart';
import 'package:daily_task/widgets/todo_items.dart';
import 'package:flutter/material.dart';

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