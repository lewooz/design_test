import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:radity_flutter_app/views/tabs/task_tab/task_content.dart';
import 'package:radity_flutter_app/views/tabs/task_tab/task_header.dart';
import 'package:radity_flutter_app/views/tabs/task_tab/task_top_buttons.dart';
import 'package:radity_flutter_app/views/widgets/menu_selection_with_indicators.dart';

class TaskTabMain extends StatelessWidget {

  List<String> dummyMenuList = ["Menu 1","Menu 2","Menu 3","Menu 4","Menu 5","Menu 6"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TaskHeader(),
        Expanded(
          child: Stack(
            children: [
              Container(
                height: 0.2556.sh,
                color: Get.theme.primaryColorLight,
              ),
              Padding(
                padding: EdgeInsets.only(left: 1.sw<350 ? 0 : 0.015.sw, top: 10, right: 1.sw<350 ? 0 : 0.015.sw, bottom: 20),
                child: Column(
                  children: [
                    TaskTopButtons(),
                    SizedBox(
                      height: 10,
                    ),
                    MenuSelectionWithIndicators(titleList: dummyMenuList,),
                    SizedBox(
                      height: 15,
                    ),
                    Expanded(child: TaskContent())
                  ],
                ),
              )
            ],
          ),
        ),
/*
        Expanded(
            child: Padding(
          padding: EdgeInsets.only(left: 1.sw<350 ? 0 : 0.015.sw, top: 10, right: 1.sw<350 ? 0 : 0.015.sw, bottom: 20),
          child: Column(
            children: [
                TaskTopButtons(),
                SizedBox(
                  height: 10,
                ),
                MenuSelectionWithIndicators(titleList: dummyMenuList,),
              SizedBox(
                height: 15,
              ),
              Expanded(child: TaskContent())
            ],
          ),
        ))
*/
      ],
    );
  }
}
