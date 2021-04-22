import 'package:radity_flutter_app/views/tabs/home_tab/grid_item.dart';

class GridItemModel{
  String topText, middleText, bottomText, numberText;
  GridItemType gridItemType;
  GridItemModel(
      this.topText, this.middleText, this.bottomText, this.numberText,
      {this.gridItemType=GridItemType.NUMBER_GRID});
}