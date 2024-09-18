import 'package:flutter/material.dart';
import 'package:project/screens/second_screen.dart';

// ignore: camel_case_types
class first_screen extends StatelessWidget {
  const first_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff000000),
        appBar: AppBar(
          backgroundColor: const Color(0xff000000),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return second_screen();
                  }));
                },
                child: const Text(
                  "Skip",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ))
          ],
        ),
        body: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            const Column(
              children: [
                Text("Brew Beans",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 50)),
                Text(
                  "Buy The Best and Premium",
                  style: TextStyle(
                      color: Color(0xffB58955),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  "Coffe in town",
                  style: TextStyle(
                      color: Color(0xffB58955),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                )
              ],
            ),
            const Spacer(
              flex: 1,
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                "assets/images/Screenshot 2024-04-29 003712.png",
                width: double.infinity,
                height: 470,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
