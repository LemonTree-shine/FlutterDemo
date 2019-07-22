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
            alignment: FractionalOffset(0.5, 0.9),
            children: <Widget>[
              CircleAvatar(
                backgroundImage: NetworkImage("https://avatars1.githubusercontent.com/u/20238337?v=4"),
                radius: 180.0,
              ),
              Container(
                padding: EdgeInsets.fromLTRB(10,2,10,2),
                decoration: BoxDecoration(
                  color: Colors.lightBlue
                ),
                child: Text(
                  "LemonTree-shine",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Positioned(
                top:20.0,
                left: 110,
                child: Text(
                  "asdasdasdasd",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}