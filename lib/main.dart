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
                height: 62,
              ),
              appBarContnt(),
              SizedBox(
                height: 20,
              ),
              scrollRow(),
              SizedBox(
                height: 20,
              ),
              Flexible(
                child: GridView.count(
                  crossAxisCount: 2,
                  padding: EdgeInsets.all(16.0),
                  childAspectRatio: 8.0 / 9.0,
                  // TODO: Build a grid of cards (102)
                  children: <Widget>[Card(),Card(),Card(),Card(),Card(),Card()],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Container appBarContnt() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              height: 18, child: Image.asset("assets/images/backico.png")),
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
                color: BackgrndCol, borderRadius: BorderRadius.circular(35)),
          )
        ],
      ),
      height: 90,
      decoration: BoxDecoration(
        color: AppbarCol,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
    );
  }

  SingleChildScrollView scrollRow() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buildRaisedButtonTop("Hot dishes", isSelected: true),
          buildRaisedButtonTop("Salads"),
          buildRaisedButtonTop("Hot drink"),
          buildRaisedButtonTop("Cold drink"),
        ],
      ),
    );
  }

  Padding buildRaisedButtonTop(String txt, {bool isSelected = false}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RaisedButton(
        textColor: isSelected ? Colors.white : Colors.grey,
        padding: EdgeInsets.all(0.0),
        shape: StadiumBorder(),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient: LinearGradient(
              colors: isSelected
                  ? <Color>[
                      Color(0xFFe3b638),
                      Color(0xFFe86637),
                      Color(0xFFd239a1),
                    ]
                  : <Color>[
                      Color(0xFFFFFFFF),
                      Color(0xFFFFFFFF),
                    ],
            ),
          ),
          child: Text(
            txt,
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
          ),
          padding: EdgeInsets.symmetric(horizontal: 28, vertical: 19.0),
        ),
        onPressed: () {
          print("pressed $txt");
        },
      ),
    );
  }

  static const AppbarCol = Color(0xFF12053d);
  static const BackgrndCol = Color(0xFFf5f6f8);
}
