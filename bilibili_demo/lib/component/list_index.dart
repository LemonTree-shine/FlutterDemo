import 'package:flutter/material.dart';

class IndexList extends StatelessWidget {
  IndexList({Key key}) : super(key: key);

  List<VideoList> videoList = List.generate(10, (int i){
    return VideoList("电影的名称",i,"images/aa.png");
  });

  List<Widget> buildList(List<VideoList> list){
    List<Widget> contentList = new List<Widget>();
    for(int i=0;i<list.length;i++){
      contentList.add(Column(
        children: <Widget>[
          Container(
            child: AspectRatio(
              aspectRatio:1.5,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Image.asset(
                  list[i].imgurl,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 5,
              left: 3,
              right: 3
            ),
            child:Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(list[i].title),
                Text("观看:"+list[i].times.toString()+"次"),
              ],
            )
          ),
        ],
      ));
    }
    return contentList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 5,
        left: 10,
        right: 10,
        bottom: 30
      ),
      child: GridView.count(
        shrinkWrap: true,
        crossAxisSpacing:10,
        mainAxisSpacing:10,
        physics: new NeverScrollableScrollPhysics(),
        crossAxisCount: 2,
        childAspectRatio: 1.2,
        children: buildList(videoList),
      ),
    );
  }
}


class VideoList{
  String title = "";
  int times = 0;
  String imgurl = "";

  VideoList(String title,int times,String imgurl){
    this.title = title;
    this.times = times;
    this.imgurl = imgurl;
  }
}