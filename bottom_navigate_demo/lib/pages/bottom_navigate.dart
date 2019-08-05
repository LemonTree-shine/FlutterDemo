import 'package:flutter/material.dart';
import './index_page.dart';
import './kitchen_page.dart';
import './laptop_page.dart';
import './music_page.dart';

class BottomNavigationBarList extends StatefulWidget {
  int currentIndex;
  BottomNavigationBarList({
    Key key,
    this.currentIndex = 0
  }) : super(key: key);

  _BottomNavigationBarList createState() => _BottomNavigationBarList();
}

class _BottomNavigationBarList extends State<BottomNavigationBarList> {
  int _currentIndex = 0;
  List<Widget> pageList = List<Widget>();
  @override
  void initState() {
    // TODO: implement initState
    pageList.add(IndexPage());
    pageList.add(KitchenPage());
    pageList.add(LaptopPage());
    pageList.add(MusicPage());
    
    //通过widget获取参数，widget代表当前组件实例，这里就是BottomNavigationBarList
    _currentIndex = widget.currentIndex;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        body: pageList[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          //showSelectedLabels: false,
          //showUnselectedLabels: false,
          currentIndex: _currentIndex,
          selectedItemColor: Colors.blue,
          type: BottomNavigationBarType.fixed,
          onTap: (int index){
            print(widget.currentIndex);
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title:Text("首页")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.kitchen),
              title:Text("美食")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.laptop_mac),
              title:Text("电子产品")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_music),
              title:Text("娱乐")
            ),
          ],
        ),
      );
  }
}