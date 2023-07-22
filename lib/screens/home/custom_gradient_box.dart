

import 'package:course_app_ui/color/colors.dart';
import 'package:course_app_ui/utils/feature_box.dart';
import 'package:flutter/material.dart';

class CustomGradientBox extends StatelessWidget {
  const CustomGradientBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppColor.gradientWhiteColor,
            AppColor.gradientBlueColor,
          ],
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.menu,
                    color: AppColor.iconColor,
                    size: 24,
                  ),
                  SizedBox(
                    child: Row(
                      children: [
                        Icon(
                          Icons.forum_outlined,
                          color: AppColor.iconColor,
                          size: 24,
                        ),
                        SizedBox(width: 10),
                        Icon(
                          Icons.notifications_none,
                          color: AppColor.iconColor,
                          size: 24,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Hello, Priya!',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                letterSpacing: 1.1,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'What do you wanna learn today?',
              style: TextStyle(
                color: AppColor.iconColor,
              ),
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FeatureBox(
                  tileTitle: 'Programs',
                  iconName: Icons.book,
                ),
                SizedBox(width: 10),
                FeatureBox(
                  tileTitle: 'Get help',
                  iconName: Icons.question_mark,
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FeatureBox(
                  tileTitle: 'Learn',
                  iconName: Icons.bookmark_outlined,
                ),
                SizedBox(width: 10),
                FeatureBox(
                  tileTitle: 'DD Tracker',
                  iconName: Icons.insert_chart,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}