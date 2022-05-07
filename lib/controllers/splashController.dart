import 'dart:async';
import 'package:get/get.dart';
import 'package:practicaltest/views/home/homeScreen.dart';

class SplashController extends GetxController {
  @override
  void onInit() async {
    _init();
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  _init() {
    Timer(Duration(seconds: 3), () {
      Get.off(() => HomeScreen(), routeName: "HomeScreen");
    });
  }
}
