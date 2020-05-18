import 'package:flutter/material.dart';

class Wallet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text('Wallet'),
      ),
      body: Column(

        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 28.0),
            child: Row(
              children: <Widget>[
                Text('Balance -',
                  style: TextStyle(
                    color: Colors.green,
                    fontSize: 22,
                  ),),
                Padding(
                  padding: const EdgeInsets.only(left:28.0),
                  child: Text('₹ ',
                    style: TextStyle(
                      color: Colors.amberAccent,
                      fontSize: 22,
                    ),),
                ),
                Text('0',
                  style: TextStyle(
                    color: Colors.white,

                  ), ),
              ],
            ),

          ),
           SizedBox(height: 8,),
             Row(
              children: <Widget>[
               GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(
                        28,10,0,30),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(
                            30,10,100,10),
                        child: Text('Amount',
                          style: TextStyle(
                              fontSize: 18,
                          ),),
                      ),
                      color: Colors.white,
                    ),
                  ),
                ),
                GestureDetector(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(
                        8,10,0,30),
                    child: Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(
                            40,10,40,10),
                        child: Text('Add Money',
                          style: TextStyle(
                              fontSize: 18,
                          color: Colors.white),),
                      ),
                      color: Colors.blueAccent,
                    ),
                  ),
                )
              ],
            ),
    ],
          ),

    );
  }
}
