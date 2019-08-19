import "package:flutter/material.dart";

class CustomRoute extends PageRouteBuilder{
  final Widget widget;

  //构造方法
  CustomRoute(this.widget)
    :super(
      transitionDuration:Duration(milliseconds: 300), //过渡时间
      pageBuilder:( //构造器
        BuildContext context,
        Animation<double> animation1,
        Animation<double> animation2,
      ){
        return widget;
      },
      transitionsBuilder:(
        BuildContext context,
        Animation<double> animation1,
        Animation<double> animation2,
        Widget child
      ){
        //透明度的变化
        // return FadeTransition(
        //   opacity: Tween(begin: 0.0,end: 1.0)
        //   .animate(CurvedAnimation(
        //     parent: animation1,
        //     curve: Curves.linear,  //动画曲线 
        //   )),
        //   child: child,
        // );

        // //缩放变化
        // return ScaleTransition(
        //   scale: Tween(begin: 0.0,end: 1.0).animate(CurvedAnimation(
        //     parent: animation1,
        //     curve: Curves.linear
        //   )),
        //   child: child,
        // );

        //左右滑动路由动画
        return SlideTransition(
          position: Tween<Offset>(
            begin: Offset(1.0, 0.0),
            end: Offset(0.0, 0.0),
          ).animate(CurvedAnimation(
            parent: animation1,
            curve: Curves.easeInOut
          )),
          child: FadeTransition(
            opacity: Tween(begin: 0.0,end: 1.0).animate(
              CurvedAnimation(
                parent: animation1,
                curve: Curves.linear
              )
            ),
            child: child,
          ),
        );
      }
    );
}