//flutter
// ignore_for_file: invalid_use_of_protected_member, must_be_immutable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practicaltest/constants/colorConst.dart';
import 'package:practicaltest/controllers/homeController.dart';
import 'package:practicaltest/models/customerModel.dart';

class TabBarWidget extends StatelessWidget {
  TabBarWidget({
    Key key,
  }) : super(key: key);
  HomeController homeControlller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
        builder: (c) => Container(
            height: 45,
            width: Get.width,
            child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: homeControlller.tabList.value.length,
                itemBuilder: (context, index) {
                  TabData tabData = homeControlller.tabList.value[index];
                  return GestureDetector(
                    onTap: () {
                      homeControlller.changeIndex(index);
                    },
                    child: Container(
                        height: 50,
                        width: (Get.width - 40) / 6,
                        decoration: BoxDecoration(border: Border(bottom: BorderSide(color: homeControlller.selectedIndex.value == index ? Colors.transparent : Colors.grey), right: BorderSide(color: (index + 1) == homeControlller.tabList.length ? Colors.transparent : Colors.grey))),
                        child: Center(
                            child: index == 0
                                ? Text(
                                    tabData.nameIcon,
                                    style: TextStyle(color: ColorConstants.primaryColor),
                                  )
                                : Center(
                                    child: Icon(
                                    tabData.nameIcon,
                                    size: 18,
                                  )))),
                  );
                })));
  }
}
