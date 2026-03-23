
import 'package:daily_task/common/fields/custom_input_field.dart';
import 'package:daily_task/constants/icons.dart';
import 'package:daily_task/constants/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DateAndTime extends StatelessWidget {
  const DateAndTime({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomInputField(
            lableText: AppTexts.date_,
            hintText: AppTexts.date_,
            suffix: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset(AppIcons.calender2),
            ),
          ),
        ),
        SizedBox(width: 8),
        Expanded(
          child: CustomInputField(
            lableText: AppTexts.time,
            hintText: AppTexts.time,
            suffix: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset(AppIcons.clock),
            ),
          ),
        ),
      ],
    );
  }
}
