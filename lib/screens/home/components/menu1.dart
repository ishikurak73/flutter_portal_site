import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(children: [
          Expanded(child: _menu(icon: Icons.mail_outline, text: "メール")),
          Expanded(child: _menu(icon: Icons.wb_sunny, text: "天気")),
          Expanded(child: _menu(icon: Icons.stars, text: "占い")),
          Expanded(child: _menu(icon: Icons.star_border, text: "お気に入り")),
          Expanded(child: _menu(icon: Icons.add_shopping_cart, text: "ショッピング")),
        ]),
        Container(
            color: Color(0xffEEEEEE),
            padding: EdgeInsets.only(bottom: 6.0),
            child: Row(children: [
              Expanded(child: _menu(icon: Icons.accessibility, text: "スポーツナビ")),
              Expanded(child: _menu(icon: Icons.account_balance, text: "ヤフオク")),
              Expanded(child: _menu(icon: Icons.train, text: "路線情報")),
              Expanded(
                  child: _menu(
                      icon: Icons.account_balance_wallet, text: "スロットくじ")),
              Expanded(
                  child: Container(
                      decoration: BoxDecoration(
                          color: Color(0xffEEEEEE),
                          border: Border(
                              right:
                                  BorderSide(width: 0.4, color: Colors.black12),
                              bottom: BorderSide(
                                  width: 0.4, color: Colors.black12))),
                      child: SizedBox(
                          height: 53.0,
                          child: Padding(
                              padding: EdgeInsets.only(top: 18.0),
                              child: Text("すべて",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54),
                                  textAlign: TextAlign.center)))))
            ]))
      ],
    );
  }

  Widget _menu({IconData icon, String text}) {
    return GestureDetector(
        onTap: () => print("ddddd"),
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
            ])));
  }
}
