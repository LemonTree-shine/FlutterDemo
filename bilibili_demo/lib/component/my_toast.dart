

import 'package:flutter/material.dart';
import 'dart:async';

class MyToast{
  static void show(@required BuildContext context,@required String message){
    var overlayState = Overlay.of(context);
    
    print(overlayState);
    OverlayEntry _overlayEntry = new OverlayEntry(
      builder: (BuildContext context){
        return Align(
          //bottom: MediaQuery.of(context).size.height/2,
          // left: MediaQuery.of(context).size.width/2,
          alignment:FractionalOffset.center,
          child: Container(
            //设置最大宽度
            constraints: BoxConstraints(
              maxWidth: 200
            ),
            padding: EdgeInsets.only(
              top: 5,
              bottom: 5,
              left: 8,
              right: 8
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(180, 0, 0, 0),
              borderRadius: BorderRadius.circular(5)
            ),
            child: Text(
              message,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                decoration: TextDecoration.none

              ),
            ),
          ),
        );
      }
    );
    print(MediaQuery.of(context).size.width);

    overlayState.insert(_overlayEntry);

    new Future.delayed(Duration(seconds: 1)).then((value) {
      _overlayEntry.remove();
    });
  }
}