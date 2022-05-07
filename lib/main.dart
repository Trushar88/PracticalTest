import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:practicaltest/views/splash/splashScreen.dart';
import 'package:practicaltest/Theme/nativeTheme.dart';
import 'package:practicaltest/utils/binding/controllerBinding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      navigatorKey: Get.key,
      enableLog: true,
      theme: Themes.light,
      initialBinding: ControllerBinding(),
      locale: Get.deviceLocale,
      title: 'Flutter Demo',
      initialRoute: "SplashScreen",
      home: SplashScreen(),
    );
  }
}
