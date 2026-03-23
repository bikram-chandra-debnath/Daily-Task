import 'package:daily_task/common/home/list_tile.dart';
import 'package:daily_task/constants/color.dart';
import 'package:daily_task/model/todo_model.dart';
import 'package:daily_task/view_model/todo_view_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IncompletToDo extends StatelessWidget {
  const IncompletToDo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final viewModelController = Get.put(TodoViewModel());
    return Container(
      decoration: BoxDecoration(
        color: AppColors.darkgrey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: StreamBuilder<List<TodoModel>> (stream: viewModelController.fetchTodoApi(), builder: (context, snapshot) {
        if(snapshot.connectionState == ConnectionState.waiting){
          return Center( child: CircularProgressIndicator(),);
        }else if(snapshot.hasData){
          final todos = snapshot.data;
          return  ListView.separated(
        padding: EdgeInsets.zero,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemBuilder:
            (context, index) => CustomListTile(title:todos[index].title.toString() ,description:todos[index].description.toString(),),
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
        } else if (!snapshot.hasData){
          return Text(" No Task added");
        }else if ( snapshot.hasError){
          return Text("Error data!");
        }else{
          return Text( "Failed to load data");
        }
      },)
    );
  }
}
