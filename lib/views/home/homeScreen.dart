// ignore_for_file: must_be_immutable, invalid_use_of_protected_member

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:multi_image_picker/multi_image_picker.dart';
import 'package:practicaltest/constants/colorConst.dart';
import 'package:practicaltest/controllers/homeController.dart';
import 'package:practicaltest/controllers/imageController.dart';
import 'package:practicaltest/models/customerModel.dart';
import 'package:practicaltest/widget/appBarWidget.dart';
import 'package:practicaltest/widget/baseRoute.dart';
import 'package:practicaltest/widget/contentBodyWidget.dart';
import 'package:practicaltest/widget/inputWidget.dart';
import 'package:practicaltest/widget/tabBarWidget.dart';

class HomeScreen extends BaseRoute {
  HomeScreen() : super();

  ImageControlller imageControlller = Get.find<ImageControlller>();
  HomeController homeControlller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyCustomAppBar(
        height: 80,
        appbarPadding: 0,
        appBar: AppBar(
          leading: Icon(Icons.arrow_back),
          centerTitle: true,
          title: Text(
            "Add Recurring Post",
            style: TextStyle(fontWeight: FontWeight.w400),
          ),
          backgroundColor: ColorConstants.primaryColor,
        ),
      ),
      body: ContentBodyWidget(
          childWidget: GetBuilder<HomeController>(
        builder: (c) => Center(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Write a Post",
                  style: TextStyle(color: Colors.grey[700], fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 300,
                  width: Get.width,
                  decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
                  child: Column(
                    children: [
                      TabBarWidget(),
                      Expanded(
                          child: InputFiledArea(
                        textEditingController: homeControlller.tabList.value[homeControlller.selectedIndex.value].textEditingController,
                        hintText: "Write something here...",
                        minLineL: 10,
                        maxLineL: 12,
                        obscureText: false,
                        textInputType: TextInputType.text,
                      ))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GetBuilder<ImageControlller>(
                  builder: (c) => imageControlller.images.value.isNotEmpty
                      ? Expanded(
                          child: GridView.count(
                          crossAxisCount: 3,
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          children: List.generate(imageControlller.images.value.length, (index) {
                            Asset asset = imageControlller.images.value[index];
                            return SizedBox(
                              height: 170,
                              width: 170,
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: AssetThumb(
                                      asset: asset,
                                      width: 140,
                                      height: 140,
                                    ),
                                  ),
                                  Positioned(
                                      right: 0,
                                      top: 0,
                                      child: GestureDetector(
                                        onTap: () {
                                          imageControlller.images.value.removeAt(index);
                                          imageControlller.update();
                                        },
                                        child: CircleAvatar(
                                          maxRadius: 10,
                                          backgroundColor: Colors.red,
                                          child: Center(
                                              child: Icon(
                                            FontAwesomeIcons.xmark,
                                            color: Colors.white,
                                            size: 16,
                                          )),
                                        ),
                                      ))
                                ],
                              ),
                            );
                          }),
                        ))
                      : Expanded(child: Center(child: Text("No image here"))))
            ],
          ),
        ),
      )),
      bottomNavigationBar: Material(
        elevation: 4,
        child: Container(
          color: Colors.white,
          height: 50,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 5),
              child: IconButton(
                icon: Icon(Icons.camera_alt_outlined),
                onPressed: () {
                  imageControlller.imageService();
                },
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
