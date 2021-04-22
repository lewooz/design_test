import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:radity_flutter_app/extensions/color_scheme_extension.dart';

class TaskCircle extends HookWidget {

  int index,borderedCircleIndex,number;


  TaskCircle(this.index, this.number, this.borderedCircleIndex);

  Color getColor(){
    switch (index){
      case 0:
        return Get.theme.colorScheme.goldenFizz;
      case 1:
        return Get.theme.colorScheme.jungleGreen;
      case 2:
        return Get.theme.primaryColor;
      case 3:
        return Get.theme.colorScheme.ironStone;
      case 4:
        return number == 0 ? Get.theme.accentColor : Get.theme.colorScheme.tundora;
    }
  }

  @override
  Widget build(BuildContext context) {
  final hasBorders = borderedCircleIndex == index ? true : false;
    return Container(
      width: hasBorders ? 22 : 20,
      height: hasBorders ? 22 : 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
         color: getColor(),
        border: Border.all(color: hasBorders ? Get.theme.colorScheme.black : Colors.transparent,width: hasBorders ? 2 : 0)
      ),
      child: Center(
        child: Text(
          number.toString(),
          style: Get.textTheme.caption.copyWith(color: Get.theme.colorScheme.black, fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
