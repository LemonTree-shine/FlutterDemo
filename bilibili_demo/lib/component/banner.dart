import "package:flutter/material.dart";
import './my_toast.dart';
class BannerImage extends StatelessWidget {
  const BannerImage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 130,
      padding: EdgeInsets.only(left: 10, right: 10),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: GestureDetector(
        onTap: (){
          MyToast.show(context, "测试测测试测试提示消息测试测试提示消息试提示消息");
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            "images/banner.png",
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
