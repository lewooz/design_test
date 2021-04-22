import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:radity_flutter_app/utils/custom_theme.dart';
import 'package:radity_flutter_app/views/pages/main_page/main_page.dart';

void main() {
  /*runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MyApp(), // Wrap your app
    ),
  );*/
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        builder: () => GetMaterialApp(
            /*locale: DevicePreview.locale(context),
            builder: DevicePreview.appBuilder,*/
            title: 'Radity App',
            debugShowCheckedModeBanner: false,
            theme: Styles.customThemeData(),
            home: MainPage()));
  }
}
