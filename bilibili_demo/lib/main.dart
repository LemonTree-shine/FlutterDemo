import 'package:flutter/material.dart';
import './component/tab_bar.dart';
import './component/banner.dart';
import './component/list_index.dart';
import './component/my_toast.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  final Color _color999 = Color.fromARGB(255, 153, 153, 153);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      theme: ThemeData(
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
                    print(context);
                    MyToast.show(context, "这是一个toast");
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
          child: ListView(
            //shrinkWrap: true,
            children: <Widget>[
              //导航部分
              TabBarStateless(),
              //banner部分
              BannerImage(),
              IndexList(),
            ],
          ),
        )
      ),
    );
  }
}


