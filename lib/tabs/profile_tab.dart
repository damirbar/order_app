import 'package:flutter/material.dart';
import 'package:order_app/models/user.dart';

class ProfileTab extends StatelessWidget {
  final User user = new User(
    firstName: 'Jane',
    lastName: 'Doe',
    phoneNumber: '+972-55-555-5555',
    profilePic: 'assets/profile_pics/prof_jane_doe.jpg',
  );

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          ),
          child: Container(
            color: Colors.pink[50],
            height: 200.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundColor: Colors.pink[200],
                  radius: 70.0,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(user.profilePic),
                    radius: 66.0,
                  ),
                ),
                Column(children: <Widget>[
                  Text(
                    '${user.firstName} ${user.lastName}',
                    style: TextStyle(
                      color: Colors.pink[900],
                      fontSize: 30.0,
                      fontWeight: FontWeight.w900,
                      letterSpacing: 1.5,
                    ),
                  ),
                ],)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
