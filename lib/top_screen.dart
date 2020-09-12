import 'package:flutter/material.dart';
import 'package:yahoo/screens/home/home_screen.dart';
import 'package:yahoo/screens/home/components/menu2/all/search_bar.dart';
import 'package:yahoo/screens/information/information_screen.dart';
import 'package:yahoo/screens/other/other_screen.dart';
import 'package:yahoo/screens/tool/tool_screen.dart';

class TopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _LayoutWidget();
  }
}

class _LayoutWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _appBar(),
        body: HomeScreen(),
        bottomNavigationBar: _bottomNavigationBar(context));
  }

  AppBar _appBar() {
    return AppBar(
        titleSpacing: 5.0,
        elevation: 0.0,
        title: SearchBar(),
        actions: [
          IconButton(
              icon: Icon(Icons.filter_none, color: Colors.grey),
              onPressed: () => null),
        ],
        backgroundColor: Colors.white,
        bottom: PreferredSize(
            child: Container(
              color: Color(0xffC0C0C0),
              height: 0.4,
            ),
            preferredSize: Size.fromHeight(0.4)));
  }

  Widget _bottomNavigationBar(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Colors.transparent, boxShadow: [
          BoxShadow(color: Colors.transparent, spreadRadius: 0, blurRadius: 0)
        ]),
        child: SizedBox(
            height: 100,
            child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                iconSize: 30,
                selectedItemColor: Colors.red,
                unselectedItemColor: Colors.grey,
                onTap: (int index) {
                  switch (index) {
                    case 0:
                      _tap(context, HomeScreen());
                      break;
                    case 1:
                      _tap(context, ToolScreen());
                      break;
                    case 2:
                      _tap(context, InformationScreen());
                      break;
                    case 3:
                      _tap(context, OtherScreen());
                      break;
                  }
                },
                items: <BottomNavigationBarItem>[
                  _bottomNavigationBarItem(Icons.home, 'ホーム'),
                  _bottomNavigationBarItem(Icons.view_module, 'ツール'),
                  _bottomNavigationBarItem(Icons.notifications, 'お知らせ'),
                  _bottomNavigationBarItem(Icons.more_horiz, 'その他'),
                ])));
  }

  void _tap(BuildContext context, StatelessWidget screen) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return screen;
    }));
  }

  BottomNavigationBarItem _bottomNavigationBarItem(
      IconData icon, String label) {
    return BottomNavigationBarItem(
      icon: Stack(children: [
        Padding(
          padding: EdgeInsets.only(left: 4, right: 4),
          child: Icon(icon),
        ),
        Positioned(
            right: 0,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(4)),
                constraints: BoxConstraints(minHeight: 8, minWidth: 8),
                child: Container()))
      ]),
      title: Text(label, style: TextStyle(fontSize: 10)),
    );
  }
}
