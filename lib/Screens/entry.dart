import 'package:flutter/material.dart';

class Entry extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Icon(Icons.share),
          ),
        ],
        title: Text('Match Details'),
      ),
      body: Column(

      ),
    );
  }
}
