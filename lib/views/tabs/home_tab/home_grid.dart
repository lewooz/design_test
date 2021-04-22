import 'package:flutter/material.dart';
import 'package:radity_flutter_app/models/grid_item_model.dart';

import 'grid_item.dart';

class HomeGrid extends StatelessWidget {
  
  List<GridItemModel> gridItemList= [
    GridItemModel("Gesamtzahl der bewerteten", "Assessments", "You are no 11 of your istitution", "809"),
    GridItemModel("Today", "Assessments", "You are no 11 of your istitution", "3"),
    GridItemModel("This Week", "Assessments", "", "9"),
    GridItemModel("This Month", "Assessments", "", "15"),
    GridItemModel("Total Number Assessed", "Trainees", "", "7"),
    GridItemModel("My ePortfolio", "You can access your rotations and courses here", "", "", gridItemType: GridItemType.JUST_TEXT),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 1.41,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: gridItemList.map((e) => Griditem(
          topText: e.topText,
          middleText: e.middleText,
          bottomText: e.bottomText,
          numberText: e.numberText,
          gridItemType: e.gridItemType
        )).toList()
      ),
    ));
  }

}
