import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAvatar extends StatelessWidget {
  final double avatarRadius;
  final String avatarImagePath;

  CustomAvatar({@required this.avatarRadius, @required this.avatarImagePath});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: avatarRadius+2,
      backgroundColor: Get.theme.accentColor,
      child: CircleAvatar(
        radius: avatarRadius,
        foregroundImage: AssetImage(avatarImagePath),
      ),
    );
  }
}
