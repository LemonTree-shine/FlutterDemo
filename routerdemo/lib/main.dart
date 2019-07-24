
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: FirstPage()
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: Center(
          child:RaisedButton(
            child:Text("点击前往商品页面"),
            onPressed: (){
              //Navigator.push(context, Ma)
              Navigator.push(context, MaterialPageRoute(
                builder: (context) => SecondPage()
              ));
            },
          ),
        ),
      );
  }
}


class SecondPage extends StatelessWidget {
  const SecondPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello world"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("返回按钮"),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}