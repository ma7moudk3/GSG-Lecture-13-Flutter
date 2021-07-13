import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gsg_lec12assignment/helper/mock_data.dart';

class CustomDropDawn extends StatefulWidget {
  @override
  _CustomDropDawnState createState() => _CustomDropDawnState();
}

class _CustomDropDawnState extends State<CustomDropDawn> {
  String currentCategory = 'sport';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blueAccent),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: DropdownButton<String>(
          value: currentCategory,
          onChanged: (v) {
            currentCategory = v;
            setState(() {});
          },
          items: MockData.mockData.getCategories().map((e) {
            return DropdownMenuItem(
              child: Text(e),
              value: e,
            );
          }).toList()),
    );
  }
}
