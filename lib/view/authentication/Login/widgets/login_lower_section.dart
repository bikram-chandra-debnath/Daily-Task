import 'package:daily_task/view/authentication/Login/widgets/registration.dart';
import 'package:daily_task/common/buttons/outlined_button.dart';
import 'package:daily_task/common/widgets/or_divider.dart';
import 'package:daily_task/constants/icons.dart';
import 'package:daily_task/constants/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginLowerSection extends StatelessWidget {
  const LoginLowerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OrDivider(),

        SizedBox(height: 40),

        // google button
        AppOutlinedButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AppIcons.google),
              SizedBox(width: 10),
              Text(AppTexts.loginGoogle),
            ],
          ),
        ),
        SizedBox(height: 10),
        // apple button
        AppOutlinedButton(
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AppIcons.apple),
              SizedBox(width: 10),
              Text(AppTexts.loginApple),
            ],
          ),
        ),
        SizedBox(height: 40),
        // registration
        Registration(),
        SizedBox(height: 24),
      ],
    );
  }
}
