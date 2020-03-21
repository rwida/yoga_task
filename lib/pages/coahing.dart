import 'package:flutter/material.dart';

class Coahing extends StatefulWidget {
  @override
  _CoahingState createState() => _CoahingState();
}

class _CoahingState extends State<Coahing> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var high = MediaQuery.of(context).size.height;

    return Container(
        width: width,
        height: high,
        padding: EdgeInsets.only(
    top: (high - MediaQuery.of(context).padding.top) * 0.05,
    left: (high - MediaQuery.of(context).padding.left) * 0.01,
        ),
        child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Row(
        children: <Widget>[
          Icon(Icons.arrow_back_ios),
          Padding(padding: EdgeInsets.symmetric(horizontal: width * 0.4)),
          Icon(Icons.person),
        ],
      ),
      Padding(
        padding: EdgeInsets.only(
          top: (high - MediaQuery.of(context).padding.top) * 0.03,
        ),
      ),
      Text(' RECOMMENDED', style: Theme.of(context).textTheme.body2),
      SizedBox(
        height: (high - MediaQuery.of(context).padding.top) * 0.02,
      ),
      Text('  Finish your first session to get \n  an extra bonus',
          style: Theme.of(context).textTheme.display1),
      SizedBox(
        height: (high - MediaQuery.of(context).padding.top) * 0.02,
      ),
      _getCards(context)
    ],
        ),
      );
  }
}

Widget _card(String name, String file, BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  var high = MediaQuery.of(context).size.height;

  return Container(
    padding: EdgeInsets.only(
      right: (high - MediaQuery.of(context).padding.right) * 0.01,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(5),
        topLeft: Radius.circular(5),
        bottomLeft: Radius.circular(5),
        bottomRight: Radius.circular(5),
      ),
    ),
    child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        color: Theme.of(context).primaryColor,
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                left: (high - MediaQuery.of(context).padding.left) * 0.02,
              ),
            ),
            Text(name, style: Theme.of(context).textTheme.body1),
            Padding(
              padding: EdgeInsets.only(
                right: (high - MediaQuery.of(context).padding.right) * 0.02,
              ),
            ),
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                child: Image.asset(
                  file,
                  width: (width) * 0.4,
                  height: (high) * 0.2,
                  fit: BoxFit.fitHeight,
                ),
              ),
            )
          ],
        )));
}

Widget _getCards(BuildContext context) {
  var high = MediaQuery.of(context).size.height;

  return Container(
    child: Expanded(
          child: ListView(
        scrollDirection: Axis.vertical,
         padding: EdgeInsets.only(
           bottom: (high - MediaQuery.of(context).padding.bottom) * 0.03
         ),
        children: <Widget>[
          _card('Easy yoga\nfor beginners\n1 week  .  level 1',
            'assets/img/1.jpg', context),
        SizedBox(
          height: (high - MediaQuery.of(context).padding.top) * 0.02,
        ),
        _card('Strendth\nbuilding\n2 week  .  level 2', 'assets/img/2.jpg',
            context),
        SizedBox(
          height: (high - MediaQuery.of(context).padding.top) * 0.02,
        ),
        _card('Expensive\nflexibility\n2 week  .  level 2',
            'assets/img/3.jpg', context),
        ],
      ),
    ),
  );
} 
 
 