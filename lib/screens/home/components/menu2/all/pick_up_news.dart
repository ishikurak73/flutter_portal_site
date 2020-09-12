import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PickUpNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        color: Color(0xffEEEEEE),
        padding: EdgeInsets.only(top: 5, bottom: 5, right: 10, left: 10),
        child: Container(
            decoration: BoxDecoration(
                color: Color(0xffFFFAFA),
                borderRadius: BorderRadius.circular(5),
                border: Border.all(width: 0.4, color: Color(0xffC0C0C0))),
            padding: EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
            child: Text("新型コロナ情報 発生状況や感染対策など",
                style: TextStyle(
                    color: Color(0xff333333),
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center)));
  }
}
