
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddTaskController extends GetxController{
  static AddTaskController get instance => Get.find();


  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  RxBool get isButtonEnable => getButton( titleController,descriptionController ).obs;
  
  
  bool getButton ( TextEditingController title, TextEditingController description ){
    if(title.text.isNotEmpty && description.text.isNotEmpty){
      return true;
    }else {
      return false;
    }

  }

  
}