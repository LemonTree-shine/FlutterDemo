import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 251, 114, 153)
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Row(children: <Widget>[
            ClipOval(
              child: Image.network(
                "https://i0.hdslb.com/bfs/archive/9af71e2246e7bc8bad91de3330128b60b8a25bd9.jpg@320w_200h.webp",
                width:30.0,
                height: 30.0,
                fit: BoxFit.fitHeight,
                color: Colors.red,
                colorBlendMode: BlendMode.darken,
              ),
            )
          ],),
        ),
        body: Center(
          child: Container(
            child: Text("hello world!")
          ),
        ),
      ),
    );
  }
}