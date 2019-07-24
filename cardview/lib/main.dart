
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('cardview demo'),
        ),
        body: Card(
          child:Column(
            children: <Widget>[
              ListTile(
                title: Text("姓名:陈泽"),
                subtitle: Text("电话号码：18815288453"),
                leading: Icon(
                  Icons.account_box,
                  color:Colors.black
                ),
                //selected: true,
                onTap: (){
                  //print("asdasdasd");
                },
              ),
              Divider(
                height: 2.0,
                color: Colors.lightBlue,
              ),
              ListTile(
                title: Text("姓名:代码"),
                subtitle: Text("电话号码：18815288502"),
                leading: Icon(
                  Icons.account_box,
                  color:Colors.lightBlue
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}