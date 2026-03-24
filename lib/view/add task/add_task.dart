import 'package:daily_task/controller/add_task/add_task_controller.dart';
import 'package:daily_task/view/add%20task/widgets/date_and_time.dart';
import 'package:daily_task/view/add%20task/widgets/upper_heading.dart';
import 'package:daily_task/common/buttons/elevated_button.dart';
import 'package:daily_task/common/fields/custom_input_field.dart';
import 'package:daily_task/constants/color.dart';
import 'package:daily_task/constants/text.dart';
import 'package:daily_task/view_model/todo_view_model.dart';
import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});
  @override
  Widget build(BuildContext context) {
    final addtaskcontroller = AddTaskController.instance;
    final viewModelController = TodoViewModel.instance;
    return Scaffold(
      backgroundColor: AppColors.black,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 96, left: 24, right: 24),
            child: Expanded(
              child: SingleChildScrollView(
                child: Column(
                  spacing: 24,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(),
                    // Todo Title writing section
                    CustomInputField(
                      controller: addtaskcontroller.titleController,
                      lableText: AppTexts.taskTitle,
                      hintText: AppTexts.taskTitle,
                    ),
                    // Todo Category  section
                    //Categories(),
                    // Todo date and time  section
                    DateAndTime(),
                    // Todo Note writing  section
                    CustomInputField(
                      controller: addtaskcontroller.descriptionController,
                      lableText: AppTexts.note,
                      hintText: AppTexts.note,
                      maxLine: 6,
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Upper Heading section
          UpperHeading(),
        ],
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),

        child: AppElevatedButton(
          onPressed:viewModelController.addDataApi,
            
          
          child: Text(AppTexts.save),
        ),
      ),
    );
  }
}
