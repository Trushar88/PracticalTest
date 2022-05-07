//flutter
import 'package:flutter/material.dart';
//controllers
import 'package:practicaltest/controllers/splashController.dart';
//models
import 'package:practicaltest/widget/baseRoute.dart';
//packages
import 'package:get/get.dart';

class SplashScreen extends BaseRoute {
  //a - analytics
  //o - observer
  SplashScreen() : super();

  final SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: FlutterLogo(
      size: 100,
    )));
  }
}
