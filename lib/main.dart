import 'package:flutter/material.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home: Scaffold(
       backgroundColor: Colors.white,
       body: SafeArea(
         child: Container(

           child: Column(



             children: [
               Align(
                   alignment: Alignment.topLeft,
                   child: Icon(Icons.arrow_left,color: Colors.black54,)),

               Align(
                 alignment: Alignment.topLeft,
                 child: Container(
                   padding: const EdgeInsets.all(25.0),
                   child: Text("Choose a gift", style: TextStyle(color: Colors.black,fontSize: 50,fontWeight: FontWeight.bold)),



                 ),

               )


             ],


           ),
         ),
       )

     )
    );
  }
}


