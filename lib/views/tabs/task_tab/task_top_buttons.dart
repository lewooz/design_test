import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:radity_flutter_app/views/widgets/custom_button.dart';

class TaskTopButtons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomButton(
          width: 0.47.sw,
          height: 45,
          text: "Export Profile",
          onPressed: (){},
          backgroundColor: Colors.transparent,
          borderColor: Get.theme.primaryColor,
          borderWidth: 1,
          textColor: Get.theme.primaryColor,
        ),
        CustomButton(
          width: 0.47.sw,
          height: 45,
          text: "Share Profile",
          onPressed: (){},
          backgroundColor: Get.theme.primaryColor,
          textColor: Get.theme.accentColor,
        )

      ],
    );
  }
}
