import 'package:flutter/material.dart';
import 'package:project/components/Box.dart';
import 'package:project/components/favorite_icone.dart';
import 'package:project/screens/first_screen.dart';
import 'package:project/screens/third_page.dart';

// ignore: camel_case_types, must_be_immutable
class second_screen extends StatefulWidget {
  @override
  State<second_screen> createState() => _second_screenState();
}

// ignore: camel_case_types
class _second_screenState extends State<second_screen> {
  int number=0 ;
  List <Widget> screens =[
    const first_screen(),
     third_pade(),

  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xffFAF3ED),
        body: ListView(
          children:[ Column(
            children: [
              Stack(children: [
                Container(
                  width: double.infinity,
                  height: 180,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                    color: Color(0xff1F0601),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 5),
                        child: Row(
                          children: [
                            const Spacer(
                              flex: 1,
                            ),
                            IconButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  Icons.menu,
                                  color: Colors.white,
                                  size: 30,
                                )),
                            const Spacer(
                              flex: 9,
                            ),
                            const Icon(
                              Icons.search,
                              color: Colors.white,
                              size: 30,
                            ),
                            const Spacer(
                              flex: 1,
                            ),
                            const Icon(
                              Icons.notifications_on_outlined,
                              color: Colors.white,
                              size: 30,
                            ),
                            const Spacer(
                              flex: 1,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  "Welcome back,",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  width: 135,
                                ),
                                IconButton(
                                    onPressed: () {
                                      Navigator.push(context,
                                          MaterialPageRoute(builder: (context) {
                                        return third_pade();
                                      }));
                                    },
                                    icon: const Icon(
                                      Icons.arrow_right,
                                      size: 30,
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                            const Text(
                              "Grab a coffe, and get back to work",
                              style: TextStyle(color: Colors.white, fontSize: 16),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Positioned(
                    child: Center(
                  child: Container(
                    width: 365,
                    padding: const EdgeInsets.only(top: 150),
                    child: const Card(
                      child: ListTile(
                        minVerticalPadding: 1,
                        leading: Icon(
                          Icons.search,
                          size: 25,
                        ),
                        title: TextField(
                          decoration: InputDecoration(
                            hintText: "Search",hintStyle: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              color: Colors.black
                            )
          
                          ),
                        )
                        ),
                      ),
                    ),
                  ),
                )
              ]),
              Row(
                children: [
                  const Spacer(
                    flex: 1,
                  ),
                  Box(text: "All"),
                  const Spacer(
                    flex: 1,
                  ),
                  Box(text: "Latte"),
                  const Spacer(
                    flex: 1,
                  ),
                  Box(text: "Caramel"),
                  const Spacer(
                    flex: 1,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                width: 335,
                height: 270,
                color: Colors.white,
                child: Column(
                  children: [
                    icone(),
                    Container(
                      child: Image.asset(
                        "assets/images/snapedit_1714491053919.jpeg",
                        width: 150,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    const Row(
                      children: [
                        Spacer(flex: 1),
                        Text(
                          "Cappuccino Coffe ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                        Spacer(
                          flex: 3,
                        ),
                        Text(
                          " \$10 ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w900),
                        ),
                        Spacer(
                          flex: 1,
                        )
                      ],
                    ),
                    const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Coffe that that will make your day more fresh ",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w300)),
                          Text(
                            "and delightful",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w300),
                          )
                        ])
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                width: 335,
                height: 210,
                color: Colors.white,
                child: Column(
                  children: [
                    icone(),
                    Container(
                      child: Image.asset(
                        "assets/images/snapedit_1714497293937.jpeg",
                        width: 140,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Row(
                      children: [
                        Spacer(flex: 1),
                        Text(
                          "Caramel Latte ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
          
                        Spacer(
                          flex: 3,
                        ),
                        Text(
                          " \$15 ",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w900),
                        ),
                        Spacer(
                          flex: 1,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ]),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index){
            setState(() {
              number = index;
            });
          },
          backgroundColor:const Color(0xff1C0000),
          currentIndex: number,

          iconSize: 30,
          items:  [
          BottomNavigationBarItem(
            icon:IconButton(onPressed: (){
                     Navigator.push(context, MaterialPageRoute(builder: (context)
                     {
                      return first_screen();
                     }));
            }, icon:const Icon(Icons.home_outlined,color: Colors.white,)),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return  second_screen();
                    }));
              } , 
              icon:const Icon(Icons.favorite_outline,color: Colors.white,)),
            label: ""
          ),
          BottomNavigationBarItem(
          icon: IconButton(onPressed: 
          (){
               Navigator.push(context, MaterialPageRoute(builder: (context)
               {
                return third_pade();
               }));
          }, icon:const Icon(Icons.person_3_outlined,color: Colors.white,)),
            label: "")
        ]),
      ),
    );
  }
}
