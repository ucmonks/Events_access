import 'package:event_access/screen5.dart';
import 'package:flutter/material.dart';

class WineDinner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: AppbarCol,
        ),
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5, top: 8),
                  child: SizedBox(
                    width: double.infinity,
                    height: 150,
                    child: Container(
                      decoration: BoxDecoration(
                          color: BackgrndCol,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, top: 100),
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Icon(
                      Icons.arrow_back,
                      color: AppbarCol,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "WINE DINNER",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          color: AppbarCol),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 70,
            ),
            SizedBox(
              height: 300,
              child: Image.asset("assets/images/bandphn.png")),
            SizedBox(
              height: 50,
            ),
            Text("Waiting wristband",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w600),),
            SizedBox(
              height: 70,
            ),
             button(context),
          ],
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
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10.0)),
        padding: EdgeInsets.all(0.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
    
              color: Colors.white,
            
          ),
          child: Text(
            "SCAN",
            style: TextStyle(fontSize: 29,color: AppbarCol, fontWeight: FontWeight.w600),
          ),
          padding: EdgeInsets.symmetric(horizontal: 140, vertical: 15.0),
        ),
        onPressed: () {
          print("pressed ");
          Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Access()),
                      );
        },
      ),
    );
  }


const AppbarCol = Color(0xFF12053d);
const BackgrndCol = Color(0xFFf5f6f8);
