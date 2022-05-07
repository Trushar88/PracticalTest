//flutter
import 'package:flutter/material.dart';
import 'package:practicaltest/constants/colorConst.dart';

//input textformfiled
class InputFiledArea extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final bool obscureText;
  final TextInputType textInputType;
  final int maxLineL;
  final int minLineL;

  const InputFiledArea({Key key, @required this.textEditingController, this.maxLineL, this.minLineL, @required this.hintText, @required this.obscureText, @required this.textInputType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      textCapitalization: TextCapitalization.words,
      controller: textEditingController,
      minLines: minLineL,
      maxLines: maxLineL,
      keyboardType: textInputType,
      cursorColor: ColorConstants.primaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey),
        contentPadding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
        border: InputBorder.none,
      ),
    );
  }
}
