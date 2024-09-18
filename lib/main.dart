import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project/screens/first_screen.dart';

void main() {
  runApp(cafe());
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
}

class cafe extends StatelessWidget {
  const cafe({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: first_screen(),
    );
  }
} 
