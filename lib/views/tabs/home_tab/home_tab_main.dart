import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:radity_flutter_app/views/tabs/home_tab/header.dart';
import 'package:radity_flutter_app/views/tabs/home_tab/home_grid.dart';
import 'package:radity_flutter_app/views/widgets/custom_button.dart';

class HomeTabMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Header(),
        HomeGrid(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: CustomButton(
            text: "Scan QR Code",
            onPressed: () {
              ///TO DO ON PRESSED
            },
            width: 0.95.sw,
            height: 45,
            backgroundColor: Get.theme.primaryColor,
            textColor: Get.theme.accentColor,
          ),
        ),
      ],
    );
  }
}
