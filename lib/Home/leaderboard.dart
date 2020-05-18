import 'package:flutter/material.dart';

class LeaderBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Leader Board'),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: ListView(

        children: <Widget>[
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.brown,),
              title: Text('Homer'),
              subtitle: Text('4 Wins'),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.brown,),
              title: Text('Mr.Burns'),
              subtitle: Text('2 Wins'),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.brown,),
              title: Text('Smithers'),
              subtitle: Text('2 Wins'),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.brown,),
              title: Text('Sideshow Bob'),
              subtitle: Text('1 Wins'),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.brown,),
              title: Text('Bart Simpson'),
              subtitle: Text('1 Wins'),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.brown,),
              title: Text('Milhouse'),
              subtitle: Text('1 Wins'),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.brown,),
              title: Text('Moe Szylak'),
              subtitle: Text('0 Wins'),
            ),
          ),
          Card(

            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.brown,),
              title: Text('Lenny'),
              subtitle: Text('0 Wins'),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.brown,),
              title: Text('Flanders'),
              subtitle: Text('0 Wins'),
            ),
          ),
          Card(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.brown,),
              title: Text('Maggie'),
              subtitle: Text('0 Wins'),
            ),
          ),
        ],
      ),
    );
  }
}
