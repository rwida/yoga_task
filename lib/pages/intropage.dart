import 'package:flutter/material.dart';
import '../bottomnavigation.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var high = MediaQuery.of(context).size.height;

    return Opacity(
      opacity: 0.6,
      child: Container(
          width: width,
          height: high,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/img/yoga4.jpg'),
                  fit: BoxFit.cover)),
          child: Opacity(
            opacity: 1,
            child: Container(
              padding: EdgeInsets.only(
                  top: (high - MediaQuery.of(context).padding.top) * 0.4),
              child: Column(
                children: <Widget>[
                  Text(
                    'YOGA',
                    style: Theme.of(context).textTheme.title,
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          top: (high - MediaQuery.of(context).padding.top) *
                              0.04)),
                  Text(
                    'A yoga teacher \n in your pocket',
                    style: Theme.of(context).textTheme.subtitle,
                  ),
                  Padding(
                      padding: EdgeInsets.only(
                          top: (high - MediaQuery.of(context).padding.top) *
                              0.07)),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => BottomNavigation()),
                      );
                    },
                    padding: EdgeInsets.symmetric(
                      horizontal:
                          (width - MediaQuery.of(context).padding.horizontal) *
                              0.1,
                      vertical:
                          (high - MediaQuery.of(context).padding.vertical) *
                              0.02,
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                        side:
                            BorderSide(color: Theme.of(context).primaryColor)),
                    color: Theme.of(context).primaryColor,
                    child: Text('Get Started',
                        style: Theme.of(context).textTheme.body1),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
