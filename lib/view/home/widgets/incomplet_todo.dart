import 'package:daily_task/common/buttons/text_button.dart';
import 'package:daily_task/common/home/list_tile.dart';
import 'package:daily_task/common/widgets/rounded_container.dart';
import 'package:daily_task/constants/color.dart';
import 'package:daily_task/controller/add_task/add_task_controller.dart';
import 'package:daily_task/model/todo_model.dart';
import 'package:daily_task/view/add%20task/add_task.dart';
import 'package:daily_task/view/home/widgets/loading.dart';
import 'package:daily_task/view_model/todo_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IncompletToDo extends StatelessWidget {
  const IncompletToDo({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModelController = Get.put(TodoViewModel());
    final addtaskController = AddTaskController.instance;
    return RoundedContainer(
      child: StreamBuilder<List<TodoModel>>(
        stream: viewModelController.fetchTodoApi(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CustomLoading();
          } else if (snapshot.hasData) {
            final todos = snapshot.data;

            return ListView.separated(
              padding: EdgeInsets.zero,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemBuilder:
                  (context, index) => CustomListTile(
                    /// onChanged
                    onChanged: (value) { viewModelController.onCompletTaskApi(todos[index].id.toString(), value!);},
                    /// Delete Button
                    onDelete:
                        () => Get.dialog(
                          CustomAlertDialogue(
                            onDelete: () {
                              viewModelController.deleteTaskApi(
                                todos[index].id!.toString(),
                              );
                              Get.back();
                            },
                          ),
                        ),

                    /// Edit Button
                    onEdit: () {
                      Get.to(() => AddTask(id: todos[index].id.toString()));
                      addtaskController.titleController.text =
                          todos[index].title.toString();
                      addtaskController.descriptionController.text =
                          todos[index].description.toString();
                    },

                    /// title
                    title: todos[index].title.toString(),

                    /// description
                    description: todos[index].description.toString(),

                    /// check complete
                    isCompleted: todos[index].isCompleted!,
                  ),
              separatorBuilder:
                  (context, index) => Divider(
                    color: AppColors.grey,
                    height: 0,
                    thickness: 0.4,
                    indent: 5,
                    endIndent: 5,
                  ),
              itemCount: todos!.length.toInt(),
            );
          } else if (!snapshot.hasData) {
            return RoundedContainer(
              width: double.maxFinite,
              height: 500,
              child: Text(" No Task added"),
            );
          } else if (snapshot.hasError) {
            return RoundedContainer(
              width: double.maxFinite,
              height: 500,
              child: Text("Error data!"),
            );
          } else {
            return RoundedContainer(
              width: double.maxFinite,
              height: 500,
              child: Text("Failed to load data"),
            );
          }
        },
      ),
    );
  }
}

class CustomAlertDialogue extends StatelessWidget {
  const CustomAlertDialogue({super.key, required this.onDelete});

  final VoidCallback onDelete;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.darkgrey,
      content: Text("Do you want delete this task?"),
      contentTextStyle: TextStyle(color: Colors.white),
      title: Text("Warnnig !", style: TextStyle(color: AppColors.red)),
      elevation: 6,
      actions: [
        AppTextButton(
          onPressed: () => Get.back(),
          child: Text("Cancel", style: TextStyle(color: AppColors.white)),
        ),
        AppTextButton(
          onPressed: onDelete,
          color: AppColors.red,
          child: Text("Delete"),
        ),
      ],
    );
  }
}
