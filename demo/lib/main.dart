import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Row weiget demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('定位布局'),
        ),
        body: Center(
          child: Stack(
            children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage("https://avatars1.githubusercontent.com/u/20238337?v=4"),
                radius: 180.0,
              ),
              Positioned(
                top:25.0,
                left: 95,
                child: Container(
                  color: Colors.green,
                  padding: EdgeInsets.fromLTRB(20, 5, 20, 5),
                  child: Text(
                    "asdasdasdasd",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 20.0,
                left: 120,
                child:Text(
                  "i like flutter",
                  style: TextStyle(
                    color: Colors.pink,
                    fontSize: 20,
                    backgroundColor: Colors.white
                  ),
                )
              )
            ],
          ),
        )
      ),
    );
  }
}