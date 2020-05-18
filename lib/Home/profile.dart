import 'package:flutter/material.dart';


class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: Text('Profile'),
         centerTitle: true,
         backgroundColor: Colors.black,
         actions: <Widget>[
           Padding(
             padding: const EdgeInsets.only(
                right: 20),
             child: GestureDetector(
               child: Icon(Icons.pages),
             ),
           ),
         ],
       ),
    );
  }
}
