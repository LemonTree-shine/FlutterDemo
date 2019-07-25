
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: FirstPage(
        aaa: "传了的话，就不会用默认值啦",
      )
    );
  }
}

class FirstPage extends StatelessWidget {
  final String myname = "my name is chenze";
  String aaa;
  String bbb = "22222";
  FirstPage({
    Key key,
    this.aaa="默认值"
  }) : super(key: key);
  
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Material App Bar'),
      ),
      body: Center(
        child:RaisedButton(
          child:Text("点击前往商品页面$aaa"),
          onPressed: (){
            //Navigator.push(context, Ma)
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => SecondPage(
                myname: myname,
              )
            ));
          },
        ),
      ),
    );
  }
}


class SecondPage extends StatelessWidget {
  String myname;

  SecondPage({Key key,this.myname}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello world"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text(myname),
          onPressed: (){
            //Navigator.pop(context);
            Navigator.push(context, MaterialPageRoute(
              builder: (context)=>FirstPage(
                aaa:"2222222"
              )
            ));
          },
        ),
      ),
    );
  }
}