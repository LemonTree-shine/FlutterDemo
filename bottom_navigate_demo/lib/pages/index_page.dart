import 'package:flutter/material.dart';
import './page_two.dart';

class IndexPage extends StatelessWidget {
  IndexPage({Key key}) : super(key: key);
  int index = 0;
  _print(String name){
    this.index++;
    print(this.index);
    print(name);
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text("首页"),
        color: Colors.white,
        textColor: Colors.teal[900],
        onPressed: (){
          _print("陈泽");
          Navigator.push(context, MaterialPageRoute(
            builder: (context){
              return PageTwo(
                title: "自定义标题",
              );
            }
          ));
        },
      ),
    );
  }
}