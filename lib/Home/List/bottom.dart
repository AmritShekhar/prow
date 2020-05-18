import 'package:flutter/material.dart';
import 'package:prowar/Home/history.dart';
import 'package:prowar/Home/leaderboard.dart';
import 'package:prowar/Home/profile.dart';
import 'package:prowar/Home/stories.dart';

class BottomToggle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(
                  28,8,20,8),
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    child: Icon(
                      Icons.image,

                      color: Colors.white,),
                    onTap: (){
                      Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => Stories()),
                      );
                    },
                  ),
                  Text('Stories',
                    style: TextStyle(
                        color: Colors.white
                    ),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                  28,8,20,8),
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    child: Icon(
                      Icons.dashboard,

                      color: Colors.white,),
                    onTap: (){
                      Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => LeaderBoard()),
                      );
                    },
                  ),
                  Text('Leaderboard',
                    style: TextStyle(
                        color: Colors.white
                    ),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                  28,8,20,8),
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    child: Icon(
                      Icons.history,

                      color: Colors.white,),
                    onTap: (){
                      Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => History()),
                      );
                    },
                  ),
                  Text('History',
                    style: TextStyle(
                        color: Colors.white
                    ),),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                  28,8,20,8),
              child: Column(
                children: <Widget>[
                  GestureDetector(
                    child: Icon(
                      Icons.person,

                      color: Colors.white,),
                    onTap: (){
                      Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => Profile()),
                      );
                    },
                  ),
                  Text('Profile',
                    style: TextStyle(
                        color: Colors.white
                    ),),
                ],
              ),
            ),
          ],
        ),

    );
  }
}
