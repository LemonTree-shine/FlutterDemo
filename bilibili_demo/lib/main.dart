import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  final Color _color999 = Color.fromARGB(255, 153, 153, 153);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
        //primaryColor: Color.fromARGB(255, 251, 114, 153),
        primaryColor: Colors.white
        
      ),
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ClipOval(
                child: Image.network(
                  "https://i0.hdslb.com/bfs/archive/9af71e2246e7bc8bad91de3330128b60b8a25bd9.jpg@320w_200h.webp",
                  width:30.0,
                  height: 30.0,
                  fit: BoxFit.fitHeight,
                  //color: Colors.red,
                  //colorBlendMode: BlendMode.darken,
                ),
              ),
              Container(
                height: 30,
                padding: EdgeInsets.only(
                  left: 10,
                  right: 10
                ),
                margin: EdgeInsets.only(
                  left: 10,
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 244, 244, 244),
                  borderRadius: BorderRadius.circular(30.0)
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(
                        top: 3
                      ),
                      child: Icon(
                        Icons.search,
                        size: 20,
                        color: _color999,
                      ),
                    ),
                    Container(
                      width: 130,
                      child: Text(
                        "喜之郎之cp无喜之郎之cp无敌组合敌组合",
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: 16,
                          color: _color999,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
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