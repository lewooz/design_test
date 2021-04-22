import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:radity_flutter_app/extensions/color_scheme_extension.dart';
import 'package:radity_flutter_app/models/task_item_model.dart';
import 'package:radity_flutter_app/views/tabs/task_tab/task_circle.dart';

class TaskItem extends HookWidget {
  final TaskItemModel taskItemModel;

  TaskItem(
      {this.taskItemModel});

  @override
  Widget build(BuildContext context) {
    final borderedCircleIndex = useState(0);

    useEffect((){
      var rng = Random();
      borderedCircleIndex.value = rng.nextInt(5);
      return null;
    },[]);

    Widget buildFirstItem(Color itemColor){
      return Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
            color: itemColor,
            borderRadius: BorderRadius.circular(6)
        ),
      );
    }
    Container buildContainer(Color bgColor,List<int> intList, Color firstItemColor) {
      return Container(
        height: 30,
        padding: EdgeInsets.symmetric(horizontal: 0.015.sw),
        decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(6)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [buildFirstItem(firstItemColor)] + intList.map((e) =>
              TaskCircle(intList.indexOf(e), e, borderedCircleIndex.value)).toList(),
        ),
      );
    }


    Widget buildContent() {
      if (taskItemModel.isOpen) {
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              taskItemModel.title,
              style: Get.textTheme.bodyText1.copyWith(
                  color: Get.theme.primaryColorDark, fontWeight: FontWeight.w700),
            ),
            Icon(
              Icons.arrow_forward_outlined,
              color: Get.theme.primaryColorDark,
            )
          ],
        );
      } else {
        return Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  taskItemModel.title,
                  style: Get.textTheme.caption.copyWith(
                      color: Get.theme.primaryColorDark,
                      fontWeight: FontWeight.w700),
                ),
                Icon(
                  Icons.more_horiz,
                  color: Get.theme.primaryColorDark,
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: buildContainer(Get.theme.colorScheme.alto, taskItemModel.firstIntegerList,taskItemModel.firstItemColor),
                ),
                SizedBox(
                  width: 0.015.sw,
                ),
                Expanded(
                  child: buildContainer(Get.theme.colorScheme.silverChalice, taskItemModel.secondIntegerList, taskItemModel.secondItemColor),
                )
              ],
            )
          ],
        );
      }
    }




    return Container(
      width: double.infinity,
      height: taskItemModel.isOpen ? 50 : 70,
      padding: EdgeInsets.all(0.015.sw),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Get.theme.primaryColor),
          color: Get.theme.accentColor),
      child: buildContent(),
    );

  }





}
