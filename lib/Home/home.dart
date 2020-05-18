import 'package:flutter/material.dart';
import 'package:prowar/Home/List/bottom.dart';
import 'package:prowar/Home/List/list.dart';
import 'package:prowar/Home/profile.dart';
import 'package:prowar/Screens/wallet.dart';




class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('ProWar'),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: <Widget>[
          GestureDetector(
            onTap: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context)=> Wallet()));
            },
            child: Container(
              width: 90,
              color: Colors.red,
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 35),
                child: Row(
                  children: <Widget>[
                    Text('₹ ',
                    style: TextStyle(
                      color: Colors.amberAccent,
                      fontSize: 22,
                    ),),
                    Text('0'),
                  ],
                ),
              ),

            ),
          )
        ],

      ),
      body: ListOf(),

      bottomSheet: BottomToggle(),

      drawer: Drawer(

        child: ListView(
          children: <Widget>[
            DrawerHeader(
                child: Image.asset(
                  'assets/signin1.jpeg',
                  fit: BoxFit.fitHeight,)),
            ListTile(
              title: Text('Profile'),
              onTap: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context)=> Profile()));
              },
            ),
            ListTile(
              title: Text('Wallet'),
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> Wallet()));
              },
            ),
            ListTile(
              title: Text('Refer N Earn'),
            ),
            ListTile(
              title: Text('Stories'),
            ),
            ListTile(
              title: Text('Notifications'),
            ),
            ListTile(
              title: Text('Host Match'),
            ),
            ListTile(
              title: Text('My History'),
            ),
            ListTile(
              title: Text('Last 10 Match'),
            ),
            ListTile(
              title: Text('Contact Support'),
            ),
          ],

        ),
      ),
    );
  }
}

