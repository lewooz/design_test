import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class TaskHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      title: Text(
        "Tasks",
        style: Get.textTheme.subtitle1,
      ),
      actions: [
        IconButton(icon: Icon(
          Icons.search,
          color: Get.theme.accentColor,
        ), onPressed: (){})
      ],
      flexibleSpace: Container(
        color: Get.theme.primaryColor,
        width: double.infinity,
        height: 0.1507.sh,
        child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
                padding: EdgeInsets.only(bottom: 2),
                child: Text("Levent Özkan",style: Get.textTheme.subtitle1,))),
      ),
    );
  }

  Container buildContainer() {
    return Container(
      color: Get.theme.primaryColor,
      width: double.infinity,
      height: 0.1507.sh,
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              Text(
                "Tasks",
                style: Get.textTheme.subtitle1,
              ),
              Icon(
                Icons.search,
                color: Get.theme.accentColor,
              )
            ],
          )
        ],
      ),
    );
  }
}
