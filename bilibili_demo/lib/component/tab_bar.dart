import "package:flutter/material.dart";

class TabBarStateless extends StatelessWidget {
  const TabBarStateless({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(),
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