import 'package:event_access/Screen4.dart';
import 'package:flutter/material.dart';

class Mainhall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Column(
          children: [
            Statusbar(),
            Stack(children: <Widget>[
              Image.asset("assets/images/screen2.png"),
              Padding(
                padding: const EdgeInsets.only(left: 30, top: 30),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: InkWell(
                    onTap: () {
                      print("taped");
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                ),
              )
            ]),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "WINE DINNERS",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: AppbarCol),
                  ),
                  Text("Main Hall",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w800,
                          color: AppbarCol)),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Wednesday, April 3,2021 \n at 7:00pm - 10:00pm",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                  button(context),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Last Update (21:20)",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        " Update",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: Colors.pink),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      )
    ;
  }

  Padding button(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10.0)),
        padding: EdgeInsets.all(0.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            gradient: LinearGradient(
              colors: <Color>[
                Color(0xFFe3b638),
                Color(0xFFe86637),
                Color(0xFFd239a1),
              ],
            ),
          ),
          child: Text(
            "SCAN",
            style: TextStyle(fontSize: 29, fontWeight: FontWeight.w600),
          ),
          padding: EdgeInsets.symmetric(horizontal: 140, vertical: 15.0),
        ),
        onPressed: () {
          print("pressed ");
          Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => WineDinner()),
                      );
        },
      ),
    );
  }
}

class Statusbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const AppbarCol = Color(0xFF12053d);
    return SizedBox(
      height: MediaQuery.of(context).padding.top,
      child: Container(
        color: AppbarCol,
      ),
    );
  }
}


const AppbarCol = Color(0xFF12053d);
const BackgrndCol = Color(0xFFf5f6f8);
