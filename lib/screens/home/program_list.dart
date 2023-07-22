import 'package:course_app_ui/color/colors.dart';
import 'package:course_app_ui/models/program_model.dart';
import 'package:flutter/material.dart';

class ProgramList extends StatelessWidget {
  const ProgramList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 260,
      child: ListView.builder(
          itemCount: programList.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemBuilder: (context, index) {
            ProgramModel programModel = programList[index];
            return Container(
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColor.whiteColor,
                  boxShadow:const [
                    BoxShadow(
                        blurRadius: 5,
                        color: Colors.grey
                    )
                  ]
              ),
              margin: const EdgeInsets.only(right: 20,bottom: 10,left: 2,top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(programModel.imageUrl),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          programModel.category,
                          style: const TextStyle(
                              color: AppColor.blueColor,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        const SizedBox(height:5),
                        Text(
                          programModel.programName,
                          style: const TextStyle(
                              color: AppColor.blackColor,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        const SizedBox(height:5),
                        Text(
                          '${programModel.lessons} lessons',
                          style: const TextStyle(
                              color: AppColor.iconColor,
                              fontWeight: FontWeight.w600
                          ),
                        ),

                      ],
                    ),
                  )
                ],
              ),
            );
          }),
    );
  }
}