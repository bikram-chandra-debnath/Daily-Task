import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddTaskController extends GetxController{
  static AddTaskController get instance => Get.find();



  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
}