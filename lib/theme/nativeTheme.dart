//flutter
import 'package:flutter/material.dart';
import 'package:practicaltest/constants/colorConst.dart';

class Themes {
  static final light = ThemeData.light().copyWith(
      backgroundColor: Colors.white,
      primaryColor: ColorConstants.primaryColor,
      cardTheme: CardTheme(
        margin: EdgeInsets.all(10),
        color: Colors.blue[200],
        elevation: 0.5,
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: Colors.blue,
      ));
}
