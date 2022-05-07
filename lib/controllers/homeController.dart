import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:practicaltest/models/customerModel.dart';

class HomeController extends GetxController {
  //list
  var tabList = [
    TabData(nameIcon: "Original", textEditingController: new TextEditingController()),
    TabData(nameIcon: FontAwesomeIcons.facebookF, textEditingController: new TextEditingController()),
    TabData(nameIcon: FontAwesomeIcons.twitter, textEditingController: new TextEditingController()),
    TabData(nameIcon: FontAwesomeIcons.linkedinIn, textEditingController: new TextEditingController()),
    TabData(nameIcon: FontAwesomeIcons.instagram, textEditingController: new TextEditingController()),
    TabData(nameIcon: FontAwesomeIcons.gift, textEditingController: new TextEditingController()),
  ].obs;

  var selectedIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void changeIndex(value) {
    selectedIndex.value = value;
    update();
  }
}
