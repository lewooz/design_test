import 'package:flutter/material.dart';
import 'package:radity_flutter_app/views/tabs/home_tab/grid_item.dart';

class TaskItemModel{
  bool isOpen;
  String title;
  List<int> firstIntegerList, secondIntegerList;
  Color firstItemColor, secondItemColor;

  TaskItemModel(
      {this.isOpen = false,
      this.title,
      this.firstIntegerList,
      this.secondIntegerList,
      this.firstItemColor,
      this.secondItemColor});
}