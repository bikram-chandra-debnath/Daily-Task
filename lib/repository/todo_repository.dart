// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:daily_task/constants/color.dart';
import 'package:daily_task/controller/add_task/add_task_controller.dart';
import 'package:daily_task/model/todo_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:http/http.dart';

class TodoRepository extends GetxController {
  static TodoRepository get instance => Get.find();

  final addtaskController = Get.put(AddTaskController());

  Stream<List<TodoModel>> fetchData() async* {
    List<TodoModel> todos = [];
    final url = "https://69bfab7a72ca04f3bcb8ecaf.mockapi.io/api/todolist";
    final response = await get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      todos = (data as List).map((item) => TodoModel.fromJson(item)).toList();
      print("data is $todos");
      yield todos;
    } else {
      throw Exception("Failed to load data");
    }
  }

  Future<void> addData() async {
    final url = "https://69bfab7a72ca04f3bcb8ecaf.mockapi.io/api/todolist";
    final response = await post(
      Uri.parse(url),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "title": addtaskController.titleController.text,
        "description": addtaskController.descriptionController.text,
        "isCompleted": false,
      }),
    );

    if (response.statusCode == 201) {
      Get.snackbar(
        "Succesful",
        "New task added successfully",
        colorText: Colors.green,
        snackPosition: SnackPosition.BOTTOM,
      );
      addtaskController.titleController.clear();
      addtaskController.descriptionController.clear();
      debugPrint(response.body);
    } else {
      Get.snackbar(
        "Failled",
        "Add New Task Failled!",
        colorText: AppColors.red,
        snackPosition: SnackPosition.BOTTOM,
      );
      debugPrint("Error Code is : ${response.statusCode}");
    }
  }

  Future<void> updateTask(String id) async {
    final url = "https://69bfab7a72ca04f3bcb8ecaf.mockapi.io/api/todolist/$id";

    final response = await put(
      Uri.parse(url),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "title": addtaskController.titleController.text,
        "description": addtaskController.descriptionController.text,
      }),
    );

    if (response.statusCode == 200) {
      Get.snackbar(
        "Succesful",
        "Task updated successfully",
        colorText: Colors.green,
        snackPosition: SnackPosition.BOTTOM,
      );
      addtaskController.titleController.clear();
      addtaskController.descriptionController.clear();
      
    } else {
      Get.snackbar(
        "Failled",
        "Task update Failled!",
        colorText: AppColors.red,
        snackPosition: SnackPosition.BOTTOM,
      );
      debugPrint("Error Code is : ${response.statusCode}");
    }
  }

  Future<void> deleteTask(String id) async {
    final url = "https://69bfab7a72ca04f3bcb8ecaf.mockapi.io/api/todolist/$id";

    final response = await delete(
      Uri.parse(url),
      headers: {"Content-Type": "application/json"},
    );

    if (response.statusCode == 200) {
      Get.snackbar(
        "Succesful",
        "Task Deleted successfully",
        colorText: Colors.green,
        snackPosition: SnackPosition.BOTTOM,
      );
      debugPrint(response.body);
    }else{
      Get.snackbar(
        "Error",
        "Failled to delete this task",
        colorText: Colors.red,
        snackPosition: SnackPosition.BOTTOM,
      );
      debugPrint("Error code is :${response.statusCode}");
    }
  }
}
