// ignore_for_file: file_names
import 'package:flutter/material.dart';

class ContentBodyWidget extends StatelessWidget {
  final Widget childWidget;

  const ContentBodyWidget({Key key, @required this.childWidget}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(child: childWidget),
    );
  }
}
