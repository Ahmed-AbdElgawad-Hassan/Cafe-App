// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class Box extends StatefulWidget {
  String text;

  Box({super.key, required this.text});

  @override
  State<Box> createState() => _BoxState();
}

class _BoxState extends State<Box> {
  Color Container_color = Colors.white;
  void changeColor() {
    Container_color =const Color(0xff1E0701);
  }

  Color Text_color = Colors.black;
  void change_Text_color() {
    Text_color = Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
  
      onTap: () {
        setState(() {
          changeColor();
          change_Text_color();
        });
      },
      onDoubleTap: () {
        setState(() {
          Container_color = Colors.white;
          Text_color = Colors.black;
        });
      
      },
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
            color: Container_color,
            borderRadius: const BorderRadius.all(
              Radius.circular(12),
            )),
        width: 120,
        height: 40,
        child: Text(
          widget.text,
          style: TextStyle(
              fontSize: 17, color: Text_color, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
