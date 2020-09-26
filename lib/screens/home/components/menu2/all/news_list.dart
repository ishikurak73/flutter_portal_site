import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(5.0),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(color: Color(0xffc5c5c5), width: 0.3))),
        child: Row(children: [
          Expanded(
              flex: 1,
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: Image.asset("assets/images/150x150.png"),
              )),
          SizedBox(width: 10),
          Expanded(
              flex: 5,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("東京の感染者数　経路不明5割弱",
                        style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff333333))),
                    SizedBox(width: 10),
                    Row(children: [
                      Icon(Icons.chat_bubble_outline,
                          size: 12, color: Colors.pinkAccent),
                      SizedBox(width: 3),
                      Text("47",
                          style: TextStyle(
                              fontSize: 12.0, color: Colors.pinkAccent)),
                      SizedBox(width: 10),
                      Text("7/12(日) 0:24",
                          style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey,
                              textBaseline: TextBaseline.ideographic)),
                      SizedBox(width: 10),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 4.0),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0)),
                            color: Colors.orangeAccent),
                        child: Text("NEW",
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 10.0,
                                color: Colors.white,
                                letterSpacing: -0.5)),
                      )
                    ])
                  ]))
        ]));
  }
}
