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
              //logo
              Image.asset(
                "images/bilibili_logo.png",
                width:70.0,
                height: 35.0,
                fit: BoxFit.fill,
                //color: Colors.red,
                //colorBlendMode: BlendMode.darken,
              ),
              //中间搜索框部分
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
                child: GestureDetector(
                  onTap: (){
                    print("点我点我点我");
                  },
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
                ),
              ),
              Container(
                width: 30.0,
                height: 30.0,
                margin: EdgeInsets.only(
                  left: 10.0,
                  right: 10.0
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255,231, 231, 231),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Icon(
                  Icons.computer,
                  size: 18,
                  color: Color.fromARGB(255, 153, 153, 153),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 251, 114, 153),
                  borderRadius: BorderRadius.circular(4.0),
                ),
                padding: EdgeInsets.only(
                  left: 5,
                  right: 5,
                ),
                height: 28,
                child: Text(
                  "下载 App",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              )
            ],
          ),
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              TabBar(),
            ],
          ),
        )
        
      ),
    );
  }
}


class TabBar extends StatefulWidget {
  TabBar({
    Key key,
  }) : super(key: key);

  _TabBarState createState() => _TabBarState();
}

class _TabBarState extends State<TabBar> {
  //导航列表
  List<String> list = ["首页","动画","娱乐","体育","更多"];
  int current_index = 0;

  List<Widget> buildList(){
    List<Widget> content = [];
    
    for(var i = 0;i<list.length;i++){
      content.add(
        Expanded(
          child: GestureDetector(
            onTap: (){
              setState(() {
                current_index = i;
              });
            },
            child: Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(
                top:5,
                bottom: 5
              ),
              child: Column(
                children: <Widget>[
                  Text(
                    list[i],
                    textAlign:TextAlign.center,
                    style: TextStyle(
                      color: current_index==i?Colors.pink:Colors.black,
                      fontSize: 19.0,
                      //backgroundColor: Colors.teal
                    ),
                  ),
                  Container(
                    height: 3,
                    width: 50,
                    decoration: BoxDecoration(
                      color: current_index==i?Colors.pink[200]:Colors.white,
                      borderRadius: BorderRadius.circular(2)
                    ),
                    
                  ),
                ],
              )
              
            ),
          ),
        )
      );
    }
    return content;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: buildList(),
      ),
    );
  }
}