import 'package:daily_task/view/authentication/Login/widgets/login_form.dart';
import 'package:daily_task/view/authentication/Login/widgets/login_lower_section.dart';
import 'package:daily_task/view/authentication/Login/widgets/login_upper_section.dart';
import 'package:daily_task/constants/color.dart';
import 'package:daily_task/constants/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.black,
      appBar: AppBar(
        toolbarHeight: 40,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AppIcons.back),
        ),
      ),
      body: Padding(
        padding: EdgeInsetsGeometry.only(left: 24, right: 24, top: 40),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // upper section
              // heading
              LoginUpperSection(),
              SizedBox(height: 40),
              // login form body
              // fields and login button
              LoginForm(),
              SizedBox(height: 40),

              // Lower section
              // other login option and register
              LoginLowerSection(),
            ],
          ),
        ),
      ),
    );
  }
}

