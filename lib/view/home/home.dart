import 'package:daily_task/view/add%20task/add_task.dart';
import 'package:daily_task/view/home/widgets/home_upper_section.dart';
import 'package:daily_task/view/home/widgets/mytodo_list.dart';
import 'package:daily_task/common/buttons/elevated_button.dart';
import 'package:daily_task/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: double.maxFinite,
        child: Stack(
          children: [
            // upper container
            UpperSection(),

            // body section

            MyTodos(),
          ],
        ),
      ),
    bottomNavigationBar: Padding(
      padding: const EdgeInsets.only(left: 24.0, right: 24, bottom: 20),
      child: AppElevatedButton(onPressed: ()=> Get.to(()=> AddTask()), child: Text("Add New Task")),
    ),
    );
  }
}

