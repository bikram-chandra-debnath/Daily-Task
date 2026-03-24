import 'package:daily_task/controller/add_task/add_task_controller.dart';
import 'package:daily_task/model/todo_model.dart';
import 'package:daily_task/repository/todo_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class TodoViewModel extends GetxController{
  static TodoViewModel get instance => Get.find();
  
  final controller = Get.put(TodoRepository());
  final addtaskcontroller = AddTaskController.instance;

Stream<List<TodoModel>> fetchTodoApi() async* {
  while(true){
    Future.delayed(Duration(milliseconds: 1),);
    yield* controller.fetchData();
  }
}

Future <void> addDataApi() async{
  if (addtaskcontroller.isButtonEnable.value) {
    controller.addData();
             
            } else {
              Get.snackbar(
                "Warning",
                "Task title or note can't be empty",
                colorText: Colors.amber,
              );
            }
  
}

}