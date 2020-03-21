import 'package:flutter/material.dart';
import './pages/setting.dart';
import './pages/activity.dart';
import './pages/coahing.dart';

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigation createState() => _BottomNavigation();
}

class _BottomNavigation extends State<BottomNavigation> {
  int currentTabIndex = 0;
  List<Widget> tabs = [Coahing(), Activity(), Setting()];
  onTapped(int index) {
    setState(() {
      currentTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[currentTabIndex],
      bottomNavigationBar: 
      BottomNavigationBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        unselectedItemColor: Theme.of(context).accentColor,
        onTap: onTapped,
        showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
        currentIndex: currentTabIndex,
        items: [
              BottomNavigationBarItem(
                icon: new Icon(Icons.spa),
                title: new Text('Coahing'),
              ),
              BottomNavigationBarItem(
                icon: new Icon(Icons.equalizer),
                title: new Text('Activity'),
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), title: Text('Setting'))
            ],
            elevation: 0,
      ),
    );
  }
}
