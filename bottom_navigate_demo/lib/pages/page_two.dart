import 'package:flutter/material.dart';

class PageTwo extends StatelessWidget {
  final String title;

  PageTwo({Key key,this.title="默认标题"}) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),
      body: RaisedButton(
        child: Text("返回"),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}