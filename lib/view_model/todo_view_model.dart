import 'package:daily_task/model/todo_model.dart';
import 'package:daily_task/repository/todo_repository.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/state_manager.dart';

class TodoViewModel extends GetxController{
  static TodoViewModel get instance => Get.find();
  
  final controller = Get.put(TodoRepository());

Stream<List<TodoModel>> fetchTodoApi() async* {
  while(true){
    Future.delayed(Duration(milliseconds: 1),);
    yield* controller.fetchData();
  }
}

}