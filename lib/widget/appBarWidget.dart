//flutter
import 'package:flutter/material.dart';
import 'package:practicaltest/constants/colorConst.dart';

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final AppBar appBar;
  final double appbarPadding;

  const MyCustomAppBar({Key key, @required this.height, this.appBar, this.appbarPadding}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          color: ColorConstants.primaryColor,
          child: Padding(
            padding: EdgeInsets.only(top: appbarPadding, bottom: appbarPadding),
            child: appBar,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
