import 'package:event_access/screen2.dart';
import 'package:flutter/material.dart';


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
              Statusbar(),
              appBarContnt(context),
              SizedBox(
                height: 20,
              ),
              scrollRow(),
              Flexible(
                child: GridView.count(
                        physics: BouncingScrollPhysics(),

                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  shrinkWrap: true,
                  padding: EdgeInsets.all(16.0),
                  childAspectRatio: 9.0 / 9.0,
                  children: <Widget>[
                    buildCarditem("1", "Cheesy Burger"),
                    buildCarditem("2", "Spaghetti with cheese"),
                     buildCarditem("3", "Marbled beef steak"),
                      buildCarditem("4", "Noodles"),
                       buildCarditem("5", "Pasta"),
                       buildCarditem("6", "Pizza"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Card buildCarditem(
    String img,
    String food,
  ) {
    return Card(
      
      shape: RoundedRectangleBorder(
        side: BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(10),
      ),
      clipBehavior: Clip.antiAlias,
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        
        children: <Widget>[
          AspectRatio(
            aspectRatio: 18.0 / 12.0,
            child: Image.asset(
              'assets/images/gv$img.png',
              fit: BoxFit.cover,
            ),
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    food,
                     textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      
                      color: AppbarCol,
                      
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container appBarContnt(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
              height: 18, child: InkWell(
                 onTap: () {
                      print("taped");
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Mainhall()),
                      );
                    },
                child: Image.asset("assets/images/backico.png"))),
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

class Statusbar extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    const AppbarCol = Color(0xFF12053d);
    return SizedBox(
      height: MediaQuery.of(context).padding.top,
      child: Container(color: AppbarCol,),
    );
  }
}
