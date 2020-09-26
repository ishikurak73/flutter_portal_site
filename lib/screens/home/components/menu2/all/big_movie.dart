import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class BigMovie extends StatefulWidget {
  @override
  _BigMovie createState() => _BigMovie();
}

class _BigMovie extends State<BigMovie> {
  VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')
      ..initialize().then((_) {
        _controller.setLooping(true);
        _controller.play();
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border:
              Border(bottom: BorderSide(color: Color(0xffc5c5c5), width: 0.3))),
      padding: EdgeInsets.all(5.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        _controller.value.initialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller))
            : Container(),
        Text("女性から寄生虫、刺身食べて侵入か？　日本",
            style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
                color: Color(0xff333333))),
        SizedBox(width: 10),
        Text("NN.co.jp",
            style: TextStyle(
                fontSize: 12.0,
                color: Colors.grey,
                textBaseline: TextBaseline.ideographic)),
      ]),
    );
  }
}
