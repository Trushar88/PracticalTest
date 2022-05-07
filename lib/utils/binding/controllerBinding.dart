//packages
import 'package:get/get.dart';
import 'package:practicaltest/controllers/homeController.dart';
//contoller

import 'package:practicaltest/controllers/imageController.dart';

class ControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ImageControlller>(() => ImageControlller(), fenix: true);
    Get.lazyPut<HomeController>(() => HomeController(), fenix: true);
  }
}
