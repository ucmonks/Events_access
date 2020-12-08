import 'package:flutter/material.dart';
import 'screen2.dart';

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
            )
          ],
        ),
      ),
    );
  }
}

const AppbarCol = Color(0xFF12053d);
const BackgrndCol = Color(0xFFf5f6f8);
