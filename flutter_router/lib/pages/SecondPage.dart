import 'package:flutter/material.dart';
 
class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text(
          "SecondPage",
          style: TextStyle(
            fontSize: 36.0
          ),
        ),
      ),
      body: Container(
        color: Colors.pink,
        child: Center(
          child: GestureDetector(
            onTap: (){
              print("object");
            },
            child: GestureDetector(
              onTap: (){
                Navigator.of(context).pop();
              },
              child: Text(
                "SecondPage",
                style: TextStyle(
                  fontSize: 40.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}