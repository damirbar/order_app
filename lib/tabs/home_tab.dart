import 'package:flutter/material.dart';

class HomeTab extends StatefulWidget {
  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Container(
                child: Card(
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                    side: BorderSide(width: 2, color: Colors.purple[300])),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.orange[200],
                                image: DecorationImage(
                                  image: AssetImage('assets/lashes_home.jpg'),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.orange[200].withOpacity(0.3),
                                      BlendMode.dstATop),
                                )),
                            height: 200.0,
                            child: Center(
                              child: Text(
                                'ריסים',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 40.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.amber[200],
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/clients_tell_home.jpg'),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.amber[200].withOpacity(0.3),
                                      BlendMode.dstATop),
                                )),
                            height: 200.0,
                            child: Center(
                              child: Text(
                                'הרמת גבות',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.orange[700],
                                  fontSize: 40.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                child: Card(
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                    side: BorderSide(width: 2, color: Colors.purple[300])
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.pink[200],
                                image: DecorationImage(
                                  image: AssetImage(
                                      'assets/advanced_treatments_home.jpg'),
                                  fit: BoxFit.cover,
                                  colorFilter: ColorFilter.mode(
                                      Colors.pink[200].withOpacity(0.3),
                                      BlendMode.dstATop),
                                )),
                            height: 200.0,
                            child: Center(
                              child: Text(
                                'טיפולי יופי מתקדמים',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.pink[900],
                                  fontSize: 40.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                child: Card(
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                    side: BorderSide(width: 2, color: Colors.purple[300])),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 3,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.purple[100],
                              image: DecorationImage(
                                image: AssetImage(
                                    'assets/clients_tell_home.jpg'),
                                fit: BoxFit.cover,
                                colorFilter: ColorFilter.mode(
                                    Colors.purple[100].withOpacity(0.3),
                                    BlendMode.dstATop
                                ),
                              )
                            ),
                            height: 150.0,
                            child: Center(
                              child: Text(
                                'לקוחות מספרות',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.purple[900],
                                  fontSize: 40.0,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                            flex: 2,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.red[100],
                                  image: DecorationImage(
                                    image:
                                        AssetImage('assets/eyebrows_home.jpg'),
                                    fit: BoxFit.cover,
                                    colorFilter: ColorFilter.mode(
                                        Colors.red[100].withOpacity(0.3),
                                        BlendMode.dstATop),
                                  )),
                              height: 150.0,
                              child: Center(
                                child: Text(
                                  'גבות',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red[900],
                                    fontSize: 40.0,
                                  ),
                                ),
                              ),
                              // color: Colors.red[100],
                            )),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
