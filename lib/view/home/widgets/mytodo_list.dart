import 'package:daily_task/view/home/widgets/completed_todo.dart';
import 'package:daily_task/view/home/widgets/incomplet_todo.dart';
import 'package:flutter/material.dart';

class MyTodos extends StatelessWidget {
  const MyTodos({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      top: 160,
      left: 0,
      right: 0,
      child: Container(
        padding: EdgeInsets.zero,
        margin: EdgeInsets.symmetric(horizontal: 24),
    
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
    
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              IncompletToDo(),
    
              SizedBox(height: 20),
              
              // CompletedTodo(),
    
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

