import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'login_page.dart';
import 'signup_page.dart';

class IndexPage extends StatefulWidget {
  static String tag = 'index-page';
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    final logo = Container(
      margin: EdgeInsets.only(bottom: 00),
      child: Hero(
        tag: 'hero',
        child: CircleAvatar(
          backgroundColor: Colors.transparent,
          radius: 48.0,
          child: Image.asset('assets/logo2.png'),
        ),
      ),
    );
    final wokerText = Container(
      // color: Colors.amber,
      // padding: EdgeInsets.only(left: 50,right: 50,top: 50),
      margin: EdgeInsets.only(bottom: 100),
      width: double.infinity,
      child: Center(
        child: Text(
          "Woker",
          style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.blueGrey[700]),
        ),
      ),
    );

    final createAnAccount = Container(
      
      // color: Colors.amber,
      padding: EdgeInsets.only(left: 50, right: 50),
      height: 50,
      width: double.infinity,
      child: RaisedButton(
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: () {
          // _login();
          Navigator.of(context).pushNamed(LoginPage.tag);
        },
        // padding: EdgeInsets.all(12),
        color: Colors.blueAccent[200],
        child: Text('Create an account',
            style: TextStyle(color: Colors.white, fontSize: 20)),
      ),
    );

    final login = Container(
      
      // color: Colors.amber,
      // padding: EdgeInsets.only(left: 50,right: 50,top: 50),
      margin: EdgeInsets.only(top: 50),
      width: double.infinity,
       child: FlatButton(

           child:Text('LOG IN',style: TextStyle(fontSize: 20,color: Colors.green,fontWeight: FontWeight.bold),), //`Text` to display
          onPressed: () {
                      Navigator.of(context).pushNamed(LoginPage.tag);

          },
        ),
      
    );

    

    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              logo,
              wokerText,
              createAnAccount,
              login,
            ],
          ),
        ),
      ),
    );
  }
}
