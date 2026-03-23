import 'package:daily_task/view/authentication/Login/login_screen.dart';
import 'package:daily_task/common/buttons/elevated_button.dart';
import 'package:daily_task/common/buttons/outlined_button.dart';
import 'package:daily_task/constants/text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginAndCreateAccountButtons extends StatelessWidget {
  const LoginAndCreateAccountButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Column(
        children: [
          // login button
          AppElevatedButton(
            onPressed: () => Get.to(() => Login()),
            child: Text(
              AppTexts.loginCapital,
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ),
          SizedBox(height: 20),
          // create account button
          AppOutlinedButton(
            onPressed: () {},
            child: Text(
              AppTexts.createAccountCapital,
              style: TextStyle(fontWeight: FontWeight.w400),
            ),
          ),
        ],
      ),
    );
  }
}
