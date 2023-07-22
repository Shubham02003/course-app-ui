import 'package:course_app_ui/color/colors.dart';
import 'package:flutter/material.dart';

class FeatureBox extends StatelessWidget {
  final String? tileTitle;
  final IconData? iconName;
  const FeatureBox(
      {super.key, required this.tileTitle, required this.iconName});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: AppColor.blueColor,
            width: 2,
          ),
        ),
        child: Row(
          children: [
            Icon(
              iconName,
              color: AppColor.blueColor,
            ),
            const SizedBox(width: 5),
            Text(
              tileTitle!,
              style: const TextStyle(
                color: AppColor.blueColor,
                fontSize: 17,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
