import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  Category({this.text, this.color});
  String? text;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16),
      alignment: Alignment.centerLeft,
      height: 65,
      width: double.infinity,
      color: color,
      child: Text(
        text!,
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    );
  }
}
