import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu2 extends StatelessWidget {
  final List<String> menuData = [
    "すべて",
    "ニュース",
    "新型コロナ",
    "クーポン",
    "芸能",
    "スポーツ",
    "話題",
    "フォロー",
    "東京五輪"
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: List.generate(
                menuData.length, (index) => _tabMenu(menuData[index]))));
  }

  Widget _tabMenu(String label) {
    return GestureDetector(
        onTap: () => {},
        child: Container(
            color: Color(0xffF5F5F5),
            padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 9.0),
            child: Row(children: [
              Text(label,
                  style: TextStyle(
                      color: Color(0xff333333),
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center),
              label != "東京五輪"
                  ? Padding(
                      padding: EdgeInsets.only(left: 15.0),
                      child: Container(
                          height: 20.0, width: 0.4, color: Colors.grey))
                  : Container()
            ])));
  }
}
