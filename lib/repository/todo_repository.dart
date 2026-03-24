// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:daily_task/model/todo_model.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/state_manager.dart';
import 'package:http/http.dart';


class TodoRepository extends GetxController{
  static TodoRepository get instance => Get.find();

Stream<List<TodoModel>> fetchData() async* {
  List<TodoModel> todos = [];
  final url = "https://69bfab7a72ca04f3bcb8ecaf.mockapi.io/api/todolist";
  final response = await get(Uri.parse(url));

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);
    todos = (data as List)
        .map((item) => TodoModel.fromJson(item))
        .toList();
    print("data is $todos");
    yield todos;
  } else {
    throw Exception("Failed to load data");
  }
}

}