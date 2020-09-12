import 'package:flutter/material.dart';
import 'package:yahoo/theme/dark_theme.dart';
import 'package:yahoo/top_screen.dart';
import 'package:yahoo/theme/light_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Name',
      theme: LightTheme.pattern(context),
      darkTheme: DarkTheme.pattern(context),
      home: TopScreen(),
    );
  }
}
