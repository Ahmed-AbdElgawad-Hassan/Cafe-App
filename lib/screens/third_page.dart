import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class third_pade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xffFAF5F1),
          actions: [
            const Spacer(
              flex: 1,
            ),
            IconButton(
                iconSize: 25,
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back)),
            const Spacer(
              flex: 20,
            ),
            const Icon(
              Icons.menu,
              size: 30,
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
        body: Column(


          
          children: [
            Container(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 50, bottom: 50),
                width: double.infinity,
                height: 400,
                color: const Color(0xffFAF5F1),
                child: const Image(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      "assets/images/snapedit_1714569163512.jpeg",
                    ))),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Spacer(
                  flex: 1,
                ),
                Text(
                  "Cappuccino",
                  style: TextStyle(fontSize: 25),
                ),
                Spacer(
                  flex: 5,
                ),
                Text(
                  "\$10",
                  style: TextStyle(fontSize: 33, fontWeight: FontWeight.w900),
                ),
                Spacer(
                  flex: 1,
                )
              ],
            ),
            const SizedBox(height: 7),
            const Row(
              children: [
                Spacer(
                  flex: 1,
                ),
                Icon(
                  Icons.timer_sharp,
                  size: 22,
                ),
                Text(
                  "15 Mins",
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                Spacer(
                  flex: 10,
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Divider(
              color: Color(0xffECD1AB),
              thickness: 2,
              indent: 50,
              endIndent: 50,
            ),
            SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Spacer(
                  flex: 1,
                ),
                Icon(
                  Icons.fire_truck_sharp,
                  color: Color.fromARGB(255, 247, 184, 116),
                  size: 30,
                ),
                Text(
                  "Free Delivery",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Spacer(
                  flex: 5,
                ),
                Icon(Icons.star_border_outlined,
                    size: 30, color: Color.fromARGB(255, 247, 184, 116)),
                Text(
                  "4.7 (1.7K)",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Spacer(
                  flex: 1,
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            const Column(
              children: [
                Text(
                  "Coffee that make your day more fresh and deli",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
                ),
                Text(
                  "ghtful and will help you in achieving more goals",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
                ),
                Text(
                  "in specific time. Will help you in achieving more",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
                ),
                Text(
                  "Coffee that make your day more fresh and deli",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
                ),
                Text(
                  "ghtful and will help you in achieving more goals",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w200),
                ),
              ],
            ),
           const SizedBox(height: 10,),
            Container(
              alignment: Alignment.center,
              width: 350,
              height: 55,
              decoration:const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                color: Colors.black
              ),
              child:const Text("Order  Now",
              style:TextStyle(
                color: Colors.white,
                fontSize: 28,
                fontWeight: FontWeight.w600
              ) ,),
              
            )
          ],
        ),
       
          
      ),
    );
  }
}
