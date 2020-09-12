//todo https://stackoverflow.com/questions/50441168/iterating-through-a-list-to-render-multiple-widgets-in-flutter

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:yahoo/screens/home/components/menu2/all/login.dart';
import 'package:yahoo/screens/home/components/menu2/all/big_movie.dart';
import 'package:yahoo/screens/home/components/menu2/all/big_news.dart';
import 'package:yahoo/screens/home/components/menu2/all/middle_news.dart';
import 'package:yahoo/screens/home/components/menu2/all/news_list.dart';
import 'package:yahoo/screens/home/components/menu2/all/small_news.dart';
import 'package:yahoo/screens/home/components/menu2/all/pick_up_news.dart';
import 'package:yahoo/screens/home/components/menu1.dart';
import 'package:yahoo/screens/home/components/menu2.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
            pinned: true,
            backgroundColor: Color(0xffFFFAFA),
            expandedHeight: 245,
            flexibleSpace: FlexibleSpaceBar(
                background: Container(
                    child: Column(children: [Login(), PickUpNews(), Menu1()]))),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(-8), child: Menu2())),
        SliverToBoxAdapter(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          _newsList(),
          _bigNewsList(),
          _middleNewsList(),
          _smallNewsList(),
          _bigMovieList(),
        ]))
      ],
    );
  }

  Widget _newsList() {
    return Column(
      children: [
        NewsList(),
        NewsList(),
        NewsList(),
        NewsList(),
        NewsList(),
        NewsList()
      ],
    );
  }

  Widget _bigNewsList() {
    return Column(
      children: [BigNews()],
    );
  }

  Widget _middleNewsList() {
    return Column(
      children: [MiddleNews()],
    );
  }

  Widget _smallNewsList() {
    return Column(
      children: [SmallNews(), SmallNews(), SmallNews()],
    );
  }

  Widget _bigMovieList() {
    return Column(
      children: [BigMovie()],
    );
  }
}
