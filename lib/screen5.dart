import 'screen6.dart';

import 'package:flutter/material.dart';

class Access extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(color: greentick),
        child: Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 200,
                child: Image.asset("assets/images/tick.png"),
              ),
              Text("Access Granted!",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800,color: Colors.white),),
              button(context),
                          Text("Abroad Scan",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w300,color: Colors.white),),

            ],
          ),
        ),
      ),
    );
  }
}

Padding button(BuildContext context) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: RaisedButton(
      textColor: Colors.white,
      shape:
          RoundedRectangleBorder(borderRadius: new BorderRadius.circular(10.0)),
      padding: EdgeInsets.all(0.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.white,
        ),
        child: Text(
          "CLOSE",
          style: TextStyle(
              fontSize: 25, color: AppbarCol, fontWeight: FontWeight.w500),
        ),
        padding: EdgeInsets.symmetric(horizontal: 140, vertical: 15.0),
      ),
      onPressed: () {
        print("CLOSE");
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Events()),
        );
      },
    ),
  );
}

const AppbarCol = Color(0xFF12053d);
const greentick = Color(0xFF6ab04c);
