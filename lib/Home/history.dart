import 'package:flutter/material.dart';



class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('History'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.black,

        child: Padding(
          padding: const EdgeInsets.fromLTRB(
           145,300,0,0
          ),
          child: Text('No Matches Found',

            style: TextStyle(color: Colors.white),),
        ),
      ),
    );
  }
}
