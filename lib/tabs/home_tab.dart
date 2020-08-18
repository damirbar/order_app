import 'package:flutter/material.dart';
import 'package:order_app/tabs/submodules/home_multi_card.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink[50],
      child: ListView(
        children: <Widget>[
          Container(
            height: 50.0,
            child: Center(
              child: Text(
                'ברוכה הבאה',
                style: TextStyle(
                  color: Colors.purple[700],
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                HomeMultiCard([
                  {
                    'bgImagePath': 'assets/lashes_home.jpg',
                    'bgColor': Colors.orange[200],
                    'titleColor': Colors.white,
                    'flex': 2,
                    'title': 'ריסים',
                  },
                  {
                    'bgImagePath': 'assets/clients_tell_home.jpg',
                    'bgColor': Colors.amber[200],
                    'titleColor': Colors.orange[700],
                    'flex': 3,
                    'title': 'הרמת גבות',
                  }
                ]),
                SizedBox(
                  height: 10.0,
                ),
                HomeMultiCard([
                  {
                    'bgImagePath': 'assets/advanced_treatments_home.jpg',
                    'bgColor': Colors.pink[200],
                    'titleColor': Colors.pink[900],
                    'flex': 2,
                    'title': 'טיפולי יופי מתקדמים',
                  },
                ]),
                SizedBox(
                  height: 10.0,
                ),
                HomeMultiCard([
                  {
                    'bgImagePath': 'assets/clients_tell_home.jpg',
                    'bgColor': Colors.purple[100],
                    'titleColor': Colors.purple[900],
                    'flex': 3,
                    'title': 'לקוחות מספרות',
                  },
                  {
                    'bgImagePath': 'assets/eyebrows_home.jpg',
                    'bgColor': Colors.red[100],
                    'titleColor': Colors.red[900],
                    'flex': 2,
                    'title': 'גבות',
                  },
                ]),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
