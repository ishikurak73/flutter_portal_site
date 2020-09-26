import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MiddleNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Color(0xffc5c5c5), width: 0.3))),
        padding: EdgeInsets.all(5.0),
        child: Row(children: [
          Container(
              decoration: BoxDecoration(
                  border: Border(
                      right: BorderSide(color: Color(0xffc5c5c5), width: 0.3))),
              padding: EdgeInsets.only(right: 5.0),
              width: (MediaQuery.of(context).size.width / 2) - 10.0,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/collecting.jpeg"),
                    Text("「100万円たまる貯金箱」を６年かけて満杯に　苦労を聞いた",
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff333333))),
                    SizedBox(width: 10),
                    Text("タウンネット",
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey,
                            textBaseline: TextBaseline.ideographic)),
                  ])),
          Container(
              padding: EdgeInsets.only(left: 5.0),
              width: (MediaQuery.of(context).size.width / 2) - 10.0,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/collecting.jpeg"),
                    Text("解散、再結成、引退。。。紆余曲折から。。。",
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff333333))),
                    SizedBox(width: 10),
                    Text("スポーツ",
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey,
                            textBaseline: TextBaseline.ideographic)),
                  ])),
        ]));
  }
}
