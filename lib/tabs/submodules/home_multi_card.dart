import 'package:flutter/material.dart';

class HomeCardModel extends StatefulWidget {
  final String title;
  final Color bgColor;
  final Color titleColor;
  final String bgImagePath;
  final int flex;

  // HomeCardModel({title, bgColor, titleColor, bgImagePath, flex});
  HomeCardModel(
      {this.title, this.bgColor, this.titleColor, this.bgImagePath, this.flex});

  @override
  _HomeCardModelState createState() => _HomeCardModelState();
}

class _HomeCardModelState extends State<HomeCardModel> {
  bool tapped = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: widget.flex,
      child: InkWell(
        onTap: () {
          setState(() {
            // TODO: Do something else here later
            tapped = true;
          });
        },
        child: Container(
          decoration: BoxDecoration(
              color: widget.bgColor,
              image: DecorationImage(
                image: AssetImage(widget.bgImagePath),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    tapped ? null : widget.bgColor.withOpacity(0.3),
                    BlendMode.dstATop),
              )),
          height: 200.0,
          child: Center(
            child: Text(
              widget.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: widget.titleColor,
                fontSize: 40.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class HomeMultiCard extends StatefulWidget {
  List<HomeCardModel> homeCardModels = new List();

  HomeMultiCard(List<Map> l) {
    homeCardModels.clear();
    l.forEach((m) {
      homeCardModels.add(HomeCardModel(
        bgColor: m['bgColor'],
        bgImagePath: m['bgImagePath'],
        flex: m['flex'],
        title: m['title'],
        titleColor: m['titleColor'],
      ));
    });
  }

  @override
  _HomeMultiCardState createState() => _HomeMultiCardState();
}

class _HomeMultiCardState extends State<HomeMultiCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          child: Row(children: widget.homeCardModels
              // <Widget>[
              //   HomeCardModel(
              //     bgImagePath: 'assets/lashes_home.jpg',
              //     bgColor: Colors.orange[200],
              //     titleColor: Colors.white,
              //     flex: 2,
              //     title: 'ריסים',
              //   ),
              //   HomeCardModel(
              //     bgImagePath: 'assets/clients_tell_home.jpg',
              //     bgColor: Colors.amber[200],
              //     titleColor: Colors.orange[700],
              //     flex: 3,
              //     title: 'הרמת גבות',
              //   ),
              // ],
              ),
        ),
      ),
    );
  }
}
