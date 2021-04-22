import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:radity_flutter_app/views/widgets/custom_avatar.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Get.theme.primaryColor,
      width: double.infinity,
      height: 0.3212.sh,
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Spacer(flex:3),
          Text("Anest - prEPAred", style: Get.theme.textTheme.subtitle1,),
          Spacer(flex: 3,),
          CustomAvatar(avatarRadius: 30,avatarImagePath: "assets/jpg/lewo.jpg",),
          Spacer(flex: 1,),
          Text("Levent Özkan", style: Get.theme.textTheme.headline6,),
          Text("Developer @Istanbul", style: Get.theme.textTheme.subtitle2,),
        ],
      ),
    );
  }
}
