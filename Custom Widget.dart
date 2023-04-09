import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget {
  //const CustomWidget({Key? key}) : super(key: key);
  final Color? bgColor;
  final Text title;
  final Icon icon;
  VoidCallback onpress;

  CustomWidget({
    this.bgColor,
    required this.title,
    required this.onpress,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: bgColor,
      child: ListTile(
        leading: icon,
        title: title,
        onTap: onpress,
      ),
    );
  }
}
