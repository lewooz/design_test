import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';

class MenuSelectionWithIndicators extends HookWidget {
  List<String> titleList;

  MenuSelectionWithIndicators({@required this.titleList});

  @override
Widget build(BuildContext context) {
    final selectedIndex = useState(0);

    onIndicatorClick(int newIndex){
      selectedIndex.value = newIndex;
    }

    Widget renderCurrentSelectedTitle(){
      return Text(titleList[selectedIndex.value],textAlign: TextAlign.center,style: Get.textTheme.headline6.copyWith(color: Get.theme.primaryColorDark, fontWeight: FontWeight.w700),);
    }

    Widget renderDotIndicators(){
      return Wrap(
        spacing: 12,
        children: List.generate(titleList.length, (index) =>
            InkWell(
              onTap: () => onIndicatorClick(index),
              child: Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: index == selectedIndex.value ? Get.theme.primaryColor : Get.theme.highlightColor,
                ),
              ),
            ))

      );
    }

  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            renderCurrentSelectedTitle(),
            SizedBox(height: 8,),
            renderDotIndicators()
          ],
        ),
      ),
      Icon(Icons.info_outline,color: Get.theme.primaryColorDark,)
    ],
  );
}}
