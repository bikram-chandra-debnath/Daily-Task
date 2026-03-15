import 'package:daily_task/Feachers/authentication/welcome/widgets/headline_subtitle.dart';
import 'package:daily_task/Feachers/authentication/welcome/widgets/login_and_create_button.dart';
import 'package:daily_task/constants/color.dart';
import 'package:daily_task/constants/icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: SvgPicture.asset(AppIcons.back),
        ),
      ),
      backgroundColor: AppColors.black,

      body: Padding(
        padding: EdgeInsetsGeometry.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: [
            /// upper section
            HeadlineAndSubTitle(),
            // lower section
            LoginAndCreateAccountButtons(),
          ],
        ),
      ),
      resizeToAvoidBottomInset: true,
    );
  }
}
