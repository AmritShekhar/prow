import 'package:flutter/material.dart';
import 'package:prowar/Screens/entry.dart';
import 'package:prowar/Screens/sample.dart';
import 'package:prowar/Screens/wallet.dart';

class ListOf extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(


        children: <Widget>[
        Container(
        margin: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
    color: Color(0xff2b2bf7),

    child: Padding(
    padding: const EdgeInsets.fromLTRB(15, 15, 0, 20),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
    Text('Recharge Wallet',
    style: TextStyle(fontSize: 18,
    color: Colors.white,
    fontWeight: FontWeight.w500),),
    SizedBox(height: 7,),
    Text('You have no balance.Please recharge to participate in\nPaid matches.',
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w600
    ),),
    FlatButton(
    onPressed: (){
    Navigator.push(context,
    MaterialPageRoute(builder: (context)=> Wallet()));
    },
    color: Color(0xff0a1754),
    child: Text('Recharge Now',
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w600
    ),
    ),),
    ],
    ),
    ),
    ),
    SizedBox(height: 10,),
    Container(
    child: Image.asset('assets/pro22.jpeg',
    fit: BoxFit.cover,),
    height: 300,
    margin: EdgeInsets.symmetric(vertical: 5,horizontal: 5),

    ),
    SizedBox(height: 10,),


    Container(
    child: GestureDetector(
    child: Image.asset('assets/pro11.jpeg',
    fit: BoxFit.cover,),
      onTap: () {
      Navigator.push(context,
      MaterialPageRoute(builder: (context)=> Entry()));
      },
    ),
    height: 400,
    margin: EdgeInsets.symmetric(
    vertical: 5,horizontal: 5),

    ),
    SizedBox(height: 5,),
    Container(
    margin: EdgeInsets.symmetric(
    vertical: 5,horizontal: 5),
    height: 250,
    color: Colors.white,
    child: Column(
    children: <Widget>[
    Padding(
    padding: const EdgeInsets.fromLTRB(
    25,25,0,10),
    child: Row(
    children: <Widget>[
    Text(
    'Click for Prize Pool Information',
    style: TextStyle(
    fontSize: 18,
    color: Color(0xff0767f4),
    ),),
    Padding(
    padding: const EdgeInsets.only(
    left: 80,
    ),
    child: GestureDetector(

    child: Icon(Icons.keyboard_arrow_down),
    ),
    )
    ],
    ),
    ),
    Row(
    children: <Widget>[

    ],
    )
    ],
    ),
    ),
    Container(

    child: GestureDetector(
    child: Image.asset('assets/pro33.jpeg',
    fit: BoxFit.contain,
    ),
    onTap: (){
    Navigator.push(context,
    MaterialPageRoute(builder: (context)=> Sample()),);
    },
    ),
    height: 300,
    margin: EdgeInsets.symmetric(vertical: 5,horizontal: 5),

    ),
    Container(
    margin: EdgeInsets.symmetric(
    vertical: 5,horizontal: 5),
    height: 350,
    color: Colors.white,
    child: Column(
    children: <Widget>[
    Padding(
    padding: const EdgeInsets.fromLTRB(
    25,25,0,10),
    child: Row(
    children: <Widget>[
    Text(
    'Click for Prize Pool Information',
    style: TextStyle(
    fontSize: 18,
    color: Color(0xff0767f4),
    ),),
    Padding(
    padding: const EdgeInsets.only(
    left: 80,
    ),
    child: GestureDetector(

    child: Icon(Icons.keyboard_arrow_down),
    ),
    )
    ],
    ),
    ),
    ],
    ),
    ),

    ],
    ),


    );
  }
}
