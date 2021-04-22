import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:radity_flutter_app/extensions/color_scheme_extension.dart';
import 'package:radity_flutter_app/models/task_item_model.dart';
import 'package:radity_flutter_app/views/tabs/task_tab/task_item.dart';

class TaskContent extends StatelessWidget {
  List<TaskItemModel> dummyTaskItemModelList = [
    TaskItemModel(isOpen: true, title: "Neuraxial Nerve Block"),
    TaskItemModel(
      firstItemColor: Get.theme.primaryColor,
      secondItemColor: Get.theme.colorScheme.jungleGreen,
      title: "Pre-operative Assessment",
      firstIntegerList: [3, 21, 45, 14, 23],
      secondIntegerList: [16, 6, 3, 36, 0],
    ),
    TaskItemModel(
      firstItemColor: Get.theme.colorScheme.tundora,
      secondItemColor: Get.theme.primaryColor,
      title: "Emergence",
      firstIntegerList: [56,13,6,4,0],
      secondIntegerList: [24,7,42,6,4],
    ),
    TaskItemModel(
      firstItemColor: Get.theme.primaryColor,
      secondItemColor: Get.theme.colorScheme.jungleGreen,
      title: "Patient Transfer",
      firstIntegerList: [3, 21, 45, 14, 23],
      secondIntegerList: [16, 6, 3, 36, 0],
    ),
    TaskItemModel(
      firstItemColor: Get.theme.primaryColor,
      secondItemColor: Get.theme.colorScheme.jungleGreen,
      title: "Pre-operative Assessment",
      firstIntegerList: [3, 21, 45, 14, 23],
      secondIntegerList: [16, 6, 3, 36, 0],
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildContainer(Get.theme.colorScheme.alto, "Simple", Icons.sick),
              buildContainer(Get.theme.colorScheme.silverChalice, "Complex",
                  Icons.favorite),
            ],
          ),
        ),
        Positioned.fill(
            child: Container(
          margin:
              EdgeInsets.only(top: 0.09.sh, left: 0.015.sw, right: 0.015.sw),
          child: ListView.separated(
            padding: EdgeInsets.zero,
            itemCount: dummyTaskItemModelList.length,
            itemBuilder: (BuildContext context, int index) {
              return TaskItem(
                taskItemModel: dummyTaskItemModelList[index],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 0.015.sh,
              );
            },
          ),
        ))
      ],
    );
  }

  Container buildContainer(
      Color backgroundColor, String title, IconData iconData) {
    return Container(
      width: 0.415.sw,
      height: 0.5.sh,
      padding: EdgeInsets.only(top: 5, left: 15),
      decoration: BoxDecoration(
          color: backgroundColor, borderRadius: BorderRadius.circular(6)),
      child: Align(
        alignment: Alignment.topCenter,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              iconData,
              color: Get.theme.colorScheme.black,
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                title,
                style: Get.textTheme.subtitle2.copyWith(
                    color: Get.theme.colorScheme.black,
                    fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
      ),
    );
  }
}
