import 'package:flutter/material.dart';
import './SecondPage.dart';
import "./customrouter.dart";
 
class FirstPage extends StatelessWidget {
  void ToSecondPage(BuildContext context){
    //print("11");
    Navigator.of(context).push(CustomRoute(SecondPage()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(
          "first-page",
          style: TextStyle(
            fontSize: 36.0
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        child: Center(
          child: GestureDetector(
            onTap: (){
              ToSecondPage(context);
            },
            child: Text(
              "first-page",
              style: TextStyle(
                fontSize: 40.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}