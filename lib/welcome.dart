import 'package:flutter/material.dart';
import 'screen1.dart';
class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
            height: double.infinity,
            alignment: Alignment.centerRight,
            child: Image.asset("assets/images/sidedecor.png")),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
              ),
              Container(
                width: 120,
                child: Image.asset("assets/images/logo.png"),
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                "Welcome to \nWhite Linen \nNight!",
                style: TextStyle(
                    fontSize: 52,
                    fontWeight: FontWeight.w800,
                    color: AppbarCol),
              ),
              SizedBox(
                height: 70,
              ),
              Text(
                "August 03, 2021",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    color: AppbarCol),
              ),
              SizedBox(
                height: 100,
              ),
              Container(
                alignment: Alignment.center,
                child: button(context)),
              SizedBox(
                height: 20,
              ),
              Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Questions?",
                    style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey[600]),
                  )),
            ],
          ),
        )
      ],
    ));
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
          gradient: LinearGradient(
            colors: <Color>[
              Color(0xFFe3b638),
              Color(0xFFe86637),
              Color(0xFFd239a1),
            ],
          ),
        ),
        child: Text(
          "Activate your Wristband",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
        ),
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20.0),
      ),
      onPressed: () {
        print("pressed ");
        Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => MyApp()),
                      );
      },
    ),
  );
}

const AppbarCol = Color(0xFF12053d);
const BackgrndCol = Color(0xFFf5f6f8);
