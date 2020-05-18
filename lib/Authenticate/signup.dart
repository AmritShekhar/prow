import 'package:flutter/material.dart';
import 'package:prowar/Authenticate/signin.dart';
import 'package:prowar/Home/home.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  bool loading = false;
//
//  //  text field state
//
  String username = "";
  String email = "";
  String password = "";
  String error = "";



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:  Stack(
        fit: StackFit.loose,
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
//              0xff00d4f7
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [.1,.4,.7,.9],
                    colors: [
                      Color(0xffca74d3),
                      Color(0xff9858c9),
                      Color(0xff824dc3),
                      Color(0xff9abbfe),
                    ],
                  ),
                ),
                height: 330,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30,70,30,20),
                      child: Text("ProWar",
                        style: TextStyle(fontSize: 40,fontWeight: FontWeight.w400,
                            color: Colors.white),),
                    ),

                  ],
                ),

              ),
            ],
          ),
          Positioned(
            top: 190,
            left: 30,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 20,
                )],
                color:  Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(12.0),),
              ),
              height: 420,
              width: 350,

              child: Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[

                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text("Signup",
                        style: TextStyle(
                          fontSize: 22,
                        ),),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      width: 290.0,
                      child: TextFormField(
                        validator: (val) => val.isEmpty ?
                        "Enter a username" : null,
                        onChanged: (val) {
                          setState(() => username = val);
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 4),
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0)
                          ),
                          labelText: "Username",
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(

                      width: 290.0,
                      child: TextFormField(
                        validator: (val) => val.isEmpty ?
                        "Enter an email" : null,
                        onChanged: (val) {
                          setState(() => email = val);
                        },
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 4),
                          prefixIcon: Icon(Icons.email),
                          labelText: "Email Address",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30.0)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(

                      width: 290.0,
                      child: TextFormField(
                        validator: (val) => val.length < 7 ?
                        "Enter a password 8 or more characters long" : null,
                        obscureText: true,
                        onChanged: (val) {
                          setState(() => password = val);
                        },

                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 4),
                          prefixIcon: Icon(Icons.lock),
                          labelText: "Password",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(80.0)
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 28,),


                  ],
                ),
              ),

            ),
          ),
          Positioned(
            top: 540,
            left: 129,
            child: GestureDetector(
              child: Text('Already have an account?',
                style: TextStyle(color: Colors.blueAccent,
                ),),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignIn()));
              },
            ),
          ),
          Positioned(
              top: 720,
              left: 90,
              child: Text('By pressing "submit" you agree to our')),
          Positioned(
            top: 740,
            left: 145,
            child: GestureDetector(
              child: Text("terms & conditions",
                style: TextStyle(color: Colors.red,),),
              onTap: () {

              },

            ),
          ),
          Positioned(
            top: 580,
            left: 170,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    offset: Offset(2.0,2.0),
                    color: Colors.white.withOpacity(0.4),
                    blurRadius: 20,),
                  BoxShadow(
                    offset: Offset(2.0,2.0),
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 20,),],

                color:  Colors.white,
                borderRadius: BorderRadius.circular(40),
              ),
              height: 70,
              width: 70,


            ),
          ),
          Positioned(
            top: 587,
            left: 177,
            child: Container(
              child: IconButton(
                icon: Icon(Icons.arrow_forward),
                color: Color(0xfffffafa),
                onPressed: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> Home()));
                },
              ),

              decoration: BoxDecoration(

                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [.1,.4,.7,.9],
                  colors: [
                    Color(0xffca74d3),
                    Color(0xff9858c9),
                    Color(0xff824dc3),
                    Color(0xff9abbfe),
                  ],
                ),

                borderRadius: BorderRadius.circular(30),
              ),
              height: 55,
              width: 55,




            ),
          ),


        ],
      ),


    );
  }
}
