import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum GridItemType{
  NUMBER_GRID,
  JUST_TEXT
}

class Griditem extends StatelessWidget {

  GridItemType gridItemType;
  String topText, middleText, bottomText, numberText;

  Griditem(
      {this.gridItemType= GridItemType.NUMBER_GRID,
      this.topText="",
      this.middleText="",
      this.bottomText="",
      this.numberText=""});

  @override
Widget build(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      color: gridItemType == GridItemType.NUMBER_GRID ? Get.theme.primaryColorLight : Get.theme.highlightColor,
      borderRadius: BorderRadius.circular(6)
    ),
    padding: EdgeInsets.all(10),
    child: renderGridContent(),
  );
}

Widget renderGridContent(){
    switch(gridItemType){
      case GridItemType.NUMBER_GRID:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(topText,style: Get.textTheme.subtitle2.copyWith(color: Get.theme.primaryColorDark),),
            RichText(text: TextSpan(
                children: [
                  TextSpan(text: "$numberText ",style: Get.textTheme.headline4.copyWith(color: Get.theme.primaryColor, fontWeight: FontWeight.w700)),
                  TextSpan(text: middleText,style: Get.textTheme.subtitle2.copyWith(color: Get.theme.primaryColorDark,fontSize: 12)),
                ]
            )),
            Text(bottomText,style: Get.textTheme.subtitle2.copyWith(color: Get.theme.primaryColorDark,fontSize: 11),),
          ],
        );
      case GridItemType.JUST_TEXT:
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(topText,style: Get.textTheme.headline6.copyWith(color: Get.theme.primaryColorDark, fontWeight: FontWeight.w700),),
            SizedBox(height: 5,),
            Text(middleText,style: Get.textTheme.subtitle2.copyWith(color: Get.theme.primaryColorDark),textAlign: TextAlign.center,),
          ],
        );
    }
}

}
