import 'package:domoticape/verActuador.dart';
import 'package:flutter/material.dart';

import 'bottomBar.dart';
import 'listview_click_listener.dart';

void main() => runApp(new Home());
class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}
class MyAppState extends State<Home> {
  int _selectedTab = 0;
  final _pageOptions = [
    verActuador(),
    ListViewClickListener(),
    bottomBar(),
    bottomBar(),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.deepPurple,
          primaryTextTheme: TextTheme(
            title: TextStyle(color: Colors.white),
          )),
      home: Scaffold(
        appBar: AppBar(
          title: Text('DomoticaPE'),
        ),
        body: _pageOptions[_selectedTab],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedTab,
          selectedItemColor: Colors.blue[800],
          unselectedItemColor: Colors.grey[500],
          onTap: (int index) {
            setState(() {
              _selectedTab = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.graphic_eq),
              title: Text('Sensor'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.touch_app),
              title: Text('Actuador'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title: Text('Config'),
            ),
          ],
        ),
      ),
    );
  }}