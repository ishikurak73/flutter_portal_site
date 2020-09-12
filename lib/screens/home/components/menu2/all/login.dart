import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(width: 0.4, color: Color(0xffC0C0C0))),
        ),
        child: Row(children: [
          Expanded(
              flex: 1,
              child: FlatButton(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  shape: RoundedRectangleBorder(),
                  color: Color(0xffF5F5F5),
                  child: Text("ログイン",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 13,
                          fontWeight: FontWeight.bold)),
                  onPressed: () => {})),
          Container(height: 20.0, width: 0.4, color: Colors.grey),
          Expanded(
              flex: 1,
              child: FlatButton(
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  shape: RoundedRectangleBorder(),
                  color: Color(0xffF5F5F5),
                  child: Text("ID新規取得",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 13,
                          fontWeight: FontWeight.bold)),
                  onPressed: () => {}))
        ]));
  }
}
