import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:radity_flutter_app/views/tabs/home_tab/home_tab_main.dart';
import 'package:radity_flutter_app/views/tabs/qr_tab/qr_tab_main.dart';
import 'package:radity_flutter_app/views/tabs/setting_tab/setting_tab_main.dart';
import 'package:radity_flutter_app/views/tabs/task_tab/task_tab_main.dart';
import 'package:radity_flutter_app/views/widgets/custom_avatar.dart';

class MainPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final selectedBottomNavigationBarIndex = useState(0);

    changeSelectedBottomNavigationBarIndex(int newIndex){
      selectedBottomNavigationBarIndex.value = newIndex;
    }

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:  selectedBottomNavigationBarIndex.value,
        type: BottomNavigationBarType.fixed,
        onTap: (newIndex) => changeSelectedBottomNavigationBarIndex(newIndex),
        items: buildNavigationBarItems(),
      ),
      body: getTabsWidgetList(selectedBottomNavigationBarIndex.value),
    );
  }

  Widget getTabsWidgetList(int selectedNavigationBarIndex){
    List<Widget> widgetList = [
      HomeTabMain(),
      QrTabMain(),
      TaskTabMain(),
      SettingTabMain(),
    ];
    return widgetList[selectedNavigationBarIndex];
  }

  List<BottomNavigationBarItem> buildNavigationBarItems() {
    return [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",),
      BottomNavigationBarItem(icon: Icon(Icons.qr_code), label: "QR Code"),
      BottomNavigationBarItem(icon: Icon(Icons.sticky_note_2_outlined), label: "Tasks"),
      BottomNavigationBarItem(icon: CustomAvatar(avatarImagePath: "assets/jpg/lewo.jpg", avatarRadius: 10,), label: "Settings")
    ];
  }
}
