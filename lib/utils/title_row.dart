
import 'package:course_app_ui/color/colors.dart';
import 'package:flutter/material.dart';

class TitleRow extends StatelessWidget {
  final String programTitle;
  const TitleRow({super.key, required this.programTitle});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          programTitle,
          style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w500),
        ),
        const Row(
          children: [
            Text(
              'View all',
              style: TextStyle(
                color: AppColor.iconColor,
                fontSize: 15,
              ),
            ),
            Icon(
              Icons.arrow_forward,
              color: AppColor.iconColor,
              size: 17,
            )
          ],
        )
      ],
    );
  }
}