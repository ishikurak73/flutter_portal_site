import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  //const SearchBar();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xff0066FF), width: 2),
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        children: [
          Expanded(flex: 1, child: Icon(Icons.search, color: Colors.grey)),
          Expanded(
              flex: 6,
              child: Text("xxxxxxx検索",
                  style: TextStyle(color: Colors.grey, fontSize: 14))),
          Expanded(flex: 1, child: Icon(Icons.mic, color: Colors.grey)),
          Expanded(
              flex: 2,
              child: FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(0.0))),
                  color: Color(0xff0066FF),
                  child: Text("検索",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold)),
                  onPressed: () => {}))
        ],
      ),
    );
  }
}
