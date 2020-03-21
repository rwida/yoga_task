import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  VideoPlayerController _controller;
  bool _isplaying = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/video/yogavideo.mp4')
      ..addListener(() {
        final bool isplaying = _controller.value.isPlaying;
        if (isplaying != _isplaying) {
          setState(() {
            _isplaying = isplaying;
          });
        }
      })
      ..setLooping(true)
      ..initialize().then((_) {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var high = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Container(
        child: _controller.value.initialized
            ? Container(
                width: width,
                height: high,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    AspectRatio(
                      //aspectRatio: _controller.value.aspectRatio,
                      aspectRatio: 3 / 2,
                      child: VideoPlayer(_controller),
                    ),
                    Container(
                      height: high * 0.2,
                      width: width,
                      padding: EdgeInsets.only(
                        right: (width - MediaQuery.of(context).padding.right) *
                            0.0,
                        top: (high - MediaQuery.of(context).padding.top) * 0.02,
                        left: (width - MediaQuery.of(context).padding.left) *
                            0.04,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Adho Mukha Savanasana',
                              style: Theme.of(context).textTheme.display2),
                          SizedBox(
                            height:
                                (high - MediaQuery.of(context).padding.top) *
                                    0.005,
                          ),
                          Text('Downward facing dog',
                              style: Theme.of(context).textTheme.display1),
                          SizedBox(
                            height:
                                (high - MediaQuery.of(context).padding.top) *
                                    0.02,
                          ),
                          Text(
                              'Adho Mukha means having the face downwards:\nSavna is a dog.Downward facing dog pose\nresembles a dog having a good strech',
                              style: Theme.of(context).textTheme.display4),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Divider(
                            color: Colors.grey,
                          ),
                          getRows(context),
                          Padding(
                              padding: EdgeInsets.only(
                            top: (high - MediaQuery.of(context).padding.top) *
                                0.03,
                          )),
                          Container(
                            padding: EdgeInsets.only(
                              left: (width -
                                      MediaQuery.of(context).padding.left) *
                                  0.05,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Benefits',
                                    style:
                                        Theme.of(context).textTheme.display1),
                                SizedBox(
                                  height: (high -
                                          MediaQuery.of(context).padding.top) *
                                      0.02,
                                ),
                                getBenefits(context),
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            : Container(),
      ),
      floatingActionButton: Padding(
        padding: EdgeInsets.only(
          bottom: (MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.bottom) *
              0.7,
          right: (MediaQuery.of(context).size.width -
                  MediaQuery.of(context).padding.right) *
              0.37,
        ),
        child: FloatingActionButton(
          backgroundColor: Colors.transparent,
          elevation: 0,
          onPressed: _controller.value.isPlaying
              ? _controller.pause
              : _controller.play,
          child: Container(
            child: _controller.value.isPlaying
                ? Icon(
                    Icons.pause,
                    color: Colors.grey[400],
                  )
                : Icon(Icons.play_arrow, color: Colors.grey[400]),
          ),
        ),
      ),
    );
  }
}

Widget rowPoint(String text, BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  var high = MediaQuery.of(context).size.height;
  return Row(children: <Widget>[
    Padding(
      padding: EdgeInsets.only(
          left: (width - MediaQuery.of(context).padding.left) * 0.05,
          top: (high - MediaQuery.of(context).padding.top) * 0.07),
    ),
    Icon(Icons.brightness_1, size: 12),
    SizedBox(
      width: (width - MediaQuery.of(context).padding.left) * 0.02,
    ),
    Text(text, style: Theme.of(context).textTheme.display3),
  ]);
}

Widget getRows(BuildContext context) {
  return Row(
    children: <Widget>[
      Column(
        children: <Widget>[
          Center(child: rowPoint('level 1', context)),
          Center(child: rowPoint('Arm balance', context)),
        ],
      ),
      Padding(
          padding: EdgeInsets.only(
        right: (MediaQuery.of(context).size.width -
                MediaQuery.of(context).padding.right) *
            0.1,
      )),
      Column(
        children: <Widget>[
          rowPoint('Flexibility/Strech', context),
          rowPoint('Spine', context),
        ],
      )
    ],
  );
}

Widget benefits(String text, BuildContext context) {
  return Row(
    children: <Widget>[
      Icon(Icons.check, size: 25),
      Padding(
          padding: EdgeInsets.only(
              right: (MediaQuery.of(context).size.width -
                      MediaQuery.of(context).padding.right) *
                  0.03)),
      Text(text, style: Theme.of(context).textTheme.display4)
    ],
  );
}

Widget getBenefits(BuildContext context) {
  return Column(
    children: <Widget>[
      benefits('Streches calves and hamstring', context),
      benefits('Stabilizes shoulder joints', context),
      benefits('Strengthens the core', context),
      benefits('Create flexibility in the spine', context),
    ],
  );
}
