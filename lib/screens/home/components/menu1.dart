import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu1 extends StatelessWidget {
  final List<Map<String, dynamic>> menuData1 = [
    {"icon": Icons.mail_outline, "text": "メール"},
    {"icon": Icons.wb_sunny, "text": "天気"},
    {"icon": Icons.stars, "text": "占い"},
    {"icon": Icons.star_border, "text": "お気に入り"},
    {"icon": Icons.add_shopping_cart, "text": "ショッピング"}
  ];

  final List<Map<String, dynamic>> menuData2 = [
    {"icon": Icons.accessibility, "text": "スポーツナビ"},
    {"icon": Icons.account_balance, "text": "オク"},
    {"icon": Icons.train, "text": "路線情報"},
    {"icon": Icons.account_balance_wallet, "text": "スロットくじ"},
    {"icon": Icons.all_inclusive, "text": "すべて"}
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
            children: List.generate(
                menuData1.length,
                (index) => Expanded(
                    child: _menu(
                        icon: menuData1[index]["icon"],
                        text: menuData1[index]["text"])))),
        Container(
            color: Color(0xffEEEEEE),
            padding: EdgeInsets.only(bottom: 6.0),
            child: Row(
                children: List.generate(
                    menuData2.length,
                    (index) => Expanded(
                        child: _menu(
                            icon: menuData2[index]["icon"],
                            text: menuData2[index]["text"])))))
      ],
    );
  }

  Widget _menu({IconData icon, String text}) {
    return text != "すべて"
        ? GestureDetector(
            onTap: () => {},
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border(
                        right: BorderSide(width: 0.4, color: Colors.black12),
                        bottom: BorderSide(width: 0.4, color: Colors.black12))),
                padding: EdgeInsets.only(top: 7, bottom: 7),
                child: Column(children: [
                  Icon(icon),
                  Text(text, style: TextStyle(fontSize: 10))
                ])))
        : Container(
            decoration: BoxDecoration(
                color: Color(0xffEEEEEE),
                border: Border(
                    right: BorderSide(width: 0.4, color: Colors.black12),
                    bottom: BorderSide(width: 0.4, color: Colors.black12))),
            child: SizedBox(
                height: 53.0,
                child: Padding(
                    padding: EdgeInsets.only(top: 18.0),
                    child: Text("すべて",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54),
                        textAlign: TextAlign.center))));
  }
}
