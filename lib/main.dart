import 'package:flutter/material.dart';
import 'package:order_app/tabs/home_tab.dart';
import 'package:order_app/tabs/profile_tab.dart';

void main() {
  runApp(OrderApp());
}

class OrderApp extends StatefulWidget {
  @override
  _OrderAppState createState() => _OrderAppState();
}

class _OrderAppState extends State<OrderApp> {

  int _currIndex = 0;

  final tabs = [
    // Center(child: Text('Home')),
    HomeTab(),
    // Center(child: Text('Profile')),
    ProfileTab(),
    Center(child: Text('Appoinments')),
    Center(child: Text('Settings')),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent[200],
        title: Center(
          child: Text(
            'Orli Beauty Center',
            style: TextStyle(
              fontSize: 25.0,
              letterSpacing: 2.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: tabs[_currIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currIndex,
        iconSize: 30.0,
        selectedFontSize: 15.0,
        unselectedFontSize: 10.0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            backgroundColor: Colors.pinkAccent[100],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
            backgroundColor: Colors.pinkAccent[200],
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            title: Text('Appointments'),
            backgroundColor: Colors.pinkAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text('Settings'),
            backgroundColor: Colors.pinkAccent[700],
          ),
        ],
        onTap: (index) {
          setState(() {
            _currIndex = index;
          });
        }
      ),
    ));
  }
}
