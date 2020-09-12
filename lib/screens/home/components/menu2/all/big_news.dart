import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BigNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(color: Color(0xffc5c5c5), width: 0.3))),
      padding: EdgeInsets.all(5.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Image.asset("assets/images/collecting.jpeg"),
        Text("女性から寄生虫、刺身食べて侵入か？　日本",
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Color(0xff333333))),
        SizedBox(width: 10),
        Text("CNN.co.jp",
            style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey,
                textBaseline: TextBaseline.ideographic)),
      ]),
    );
  }
}
