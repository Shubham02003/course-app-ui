import 'package:course_app_ui/color/colors.dart';
import 'package:course_app_ui/models/event_model.dart';
import 'package:flutter/material.dart';

class EventList extends StatelessWidget {
  const EventList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LimitedBox(
      maxHeight: 275,
      child: ListView.builder(
          itemCount: eventModelList.length,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemBuilder: (context, index) {
            EventModel eventModel = eventModelList[index];
            return Container(
              width: 250,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColor.whiteColor,
                  boxShadow: const [
                    BoxShadow(blurRadius: 5, color: Colors.grey)
                  ]),
              margin: const EdgeInsets.only(
                  right: 20, bottom: 10, left: 2, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(eventModel.imageUrl),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      children: [
                        Text(
                          eventModel.category,
                          style: const TextStyle(
                              color: AppColor.blueColor,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          eventModel.programName,
                          style: const TextStyle(
                              color: AppColor.blackColor,
                              fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 5),
                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '${eventModel.date},${eventModel.day}',
                              style: const TextStyle(
                                color: AppColor.iconColor,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                AppColor.whiteColor,
                                padding: const EdgeInsets.symmetric(horizontal: 20),

                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusDirectional.circular(20),
                                  side: const BorderSide(
                                    width: 2,
                                    color: AppColor.blueColor,
                                  ),
                                ),
                              ),
                              child: const Text(
                                'Book',
                                style: TextStyle(
                                    color: AppColor.blueColor),
                              ),
                            )
                          ],
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