import 'package:flutter/material.dart';

class icone extends StatefulWidget {
  @override
  State<icone> createState() => _iconeState();
}

// ignore: camel_case_types
class _iconeState extends State<icone> {
  bool show = true;
  Color color_icone = const Color(0xffE8E8E8);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      child: IconButton(
          onPressed: () {
            setState(() {
              show = !show;
            });
          },
          icon: Icon(
            Icons.favorite,
            color: show ? const Color(0xffE8E8E8) : Colors.red,
            size: 27,
          )),
    );
  }
}
