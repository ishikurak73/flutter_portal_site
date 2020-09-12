import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Menu2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          _tabMenu("すべて"),
          Container(height: 20.0, width: 0.4, color: Colors.grey),
          _tabMenu("ニュース"),
          Container(height: 20.0, width: 0.4, color: Colors.grey),
          _tabMenu("新型コロナ"),
          Container(height: 20.0, width: 0.4, color: Colors.grey),
          _tabMenu("クーポン"),
          Container(height: 20.0, width: 0.4, color: Colors.grey),
          _tabMenu("芸能"),
          Container(height: 20.0, width: 0.4, color: Colors.grey),
          _tabMenu("スポーツ"),
          Container(height: 20.0, width: 0.4, color: Colors.grey),
          _tabMenu("話題"),
          Container(height: 20.0, width: 0.4, color: Colors.grey),
          _tabMenu("フォロー"),
          Container(height: 20.0, width: 0.4, color: Colors.grey),
          _tabMenu("東京五輪"),
        ]));
  }

  Widget _tabMenu(String label) {
    return GestureDetector(
        onTap: () => {},
        child: Container(
          color: Color(0xffF5F5F5),
          padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
          child: Text(label,
              style: TextStyle(
                  color: Color(0xff333333),
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center),
        ));
  }
}
