import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SmallNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Color(0xffc5c5c5), width: 0.3))),
        child: Row(children: [
          Expanded(
            flex: 2,
            child: Image.asset("assets/images/150x150.png"),
          ),
          SizedBox(width: 10),
          Expanded(
              flex: 5,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("４作品の再上映。異例のヒット",
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff333333))),
                    SizedBox(width: 10),
                    Text("シネマトゥディ",
                        style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey,
                            textBaseline: TextBaseline.ideographic)),
                  ]))
        ]));
  }
}
