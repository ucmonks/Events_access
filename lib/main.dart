import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              SizedBox(
                height: 85,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                
                  Container(
                      height: 18,
                      child: Image.asset("assets/images/backico.png")),
                  Container(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 25,
                        ),
                        Container(
                            height: 30,
                            child: Image.asset("assets/images/search.png",
                                fit: BoxFit.cover)),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 50,
                          width: 240,
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search',
                                hintStyle: TextStyle(fontSize: 20)),
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        color: BackgrndCol,
                        borderRadius: BorderRadius.circular(30)),
                  )
                ],
              ),
            ],
          ),
          height: 156,
          decoration: BoxDecoration(
              color: AppbarCol,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )),
        ),
      ),
    );
  }

  static const AppbarCol = Color(0xFF12053d);
  static const BackgrndCol = Color(0xFFf5f6f8);
}
