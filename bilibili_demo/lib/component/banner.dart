import "package:flutter/material.dart";

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
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          "images/banner.png",
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
