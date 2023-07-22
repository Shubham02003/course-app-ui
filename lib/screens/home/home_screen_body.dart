import 'package:course_app_ui/screens/home/custom_gradient_box.dart';
import 'package:course_app_ui/screens/home/event_list.dart';
import 'package:course_app_ui/screens/home/lesson_list.dart';
import 'package:course_app_ui/screens/home/program_list.dart';
import 'package:course_app_ui/utils/title_row.dart';
import 'package:flutter/material.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return  const SingleChildScrollView(
      child: Column(
        children: [
          CustomGradientBox(),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 10),
            child: Column(
              children: [
                TitleRow(
                  programTitle: 'Programs for you',
                ),
                ProgramList(),
                SizedBox(
                  height: 20,
                ),
                TitleRow(
                  programTitle: 'Events and experiences',
                ),
                EventList(),
                SizedBox(
                  height: 20,
                ),
                TitleRow(
                  programTitle: 'Lessons for you',
                ),
                LessonList(),
              ],
            ),
          )
        ],
      ),
    );
  }
}