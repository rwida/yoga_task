import 'package:flutter/material.dart';

class Activity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var high = MediaQuery.of(context).size.height;

    return Container(
      width: width,
      height: high,
      padding: EdgeInsets.only(
        top: (high - MediaQuery.of(context).padding.top) * 0.09,
        left: (high - MediaQuery.of(context).padding.left) * 0.01,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [Color(0xFFC19EFC), Color(0xFFF2E5F6)],
            begin: const FractionalOffset(0.0, 0.0),
            end: const FractionalOffset(0.90, 0.90),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Icon(Icons.arrow_back_ios,
                  color: Theme.of(context).scaffoldBackgroundColor),
              Padding(padding: EdgeInsets.symmetric(horizontal: width * 0.08)),
              Text('SMART COACH', style: Theme.of(context).textTheme.subtitle),
              Padding(padding: EdgeInsets.symmetric(horizontal: width * 0.08)),
              Icon(Icons.person,
                  color: Theme.of(context).scaffoldBackgroundColor),
            ],
          ),
          SizedBox(
            height: (high - MediaQuery.of(context).padding.top) * 0.08,
          ),
          Container(
            width: (width - MediaQuery.of(context).padding.horizontal) * 0.8,
            height: (high) * 0.6,
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15),
                topLeft: Radius.circular(15),
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
            ),
            child: Column(
              children: <Widget>[
                Image(
                  image: AssetImage('assets/img/4.png'),
                  width: (width) * 0.9,
                  height: (high) * 0.2,
                ),
                SizedBox(
                  height: (high - MediaQuery.of(context).padding.top) * 0.01,
                ),
                Text('Day 1', style: Theme.of(context).textTheme.display2),
                SizedBox(
                  height: (high - MediaQuery.of(context).padding.top) * 0.02,
                ),
                Text('     Easy yoga\nfor Body stretches',
                    style: Theme.of(context).textTheme.display1),
                SizedBox(
                  height: (high - MediaQuery.of(context).padding.top) * 0.04,
                ),
                Center(
                  child: Row(
                    children: <Widget>[
                      Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.03)),
                      Text('level 1',
                          style: Theme.of(context).textTheme.display3),
                      Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.07)),
                      Text('49 Kcal',
                          style: Theme.of(context).textTheme.display3),
                      Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.07)),
                      Text('17 min',
                          style: Theme.of(context).textTheme.display3),
                    ],
                  ),
                ),
                SizedBox(
                  height: (high - MediaQuery.of(context).padding.top) * 0.06,
                ),
                RaisedButton(
                  onPressed: () {},
                  padding: EdgeInsets.symmetric(
                    horizontal:
                        (width - MediaQuery.of(context).padding.horizontal) *
                            0.2,
                    vertical:
                        (high - MediaQuery.of(context).padding.vertical) * 0.02,
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(10.0),
                      side: BorderSide(color: Theme.of(context).primaryColor)),
                  color: Theme.of(context).primaryColor,
                  child:
                      Text('Start', style: Theme.of(context).textTheme.body1),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
