import 'package:daily_task/Feachers/home/home.dart';
import 'package:daily_task/common/buttons/elevated_button.dart';
import 'package:daily_task/common/fields/custom_input_field.dart';
import 'package:daily_task/constants/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // username
        CustomInputField(
          lableText: AppTexts.userName,
          hintText: AppTexts.enterUsername,
        ),
        SizedBox(height: 20),
        // password
        CustomInputField(
          lableText: AppTexts.password,
          obscureText: true,
          hintText: AppTexts.enterPasword,
        ),
        SizedBox(height: 40),
        // login button
        AppElevatedButton(
          onPressed: () => Get.offAll(()=> Home()),
          child: Text(AppTexts.login, style: TextStyle(fontSize: 16)),
        ),
      ],
    );
  }
}
