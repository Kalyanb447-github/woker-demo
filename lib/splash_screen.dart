import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:woker/request_page.dart';
import 'package:woker/location/location.dart';

import 'index_page.dart';

class SplashScreen extends StatefulWidget {
  static String tag = 'splash-screen';

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


 _loadSavedData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    if (preferences.getString('selectedCity') != null &&
        preferences.getString('selectedCity').isNotEmpty) {
      
      Navigator.of(context).pushReplacementNamed('home-page');
      
    } else {
     Navigator.of(context).pushReplacementNamed('location');
    }
  }

  @override
  void initState() {
    super.initState();
  
    Timer(Duration(seconds: 2), () {
     _loadSavedData();
      
    });
//     Timer(Duration(seconds: 5), () =>       Navigator.of(context).pushNamed(LoginPage());
// );
  }

  final color = const Color(0xffb74093);
  

   

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
              fontFamily: 'Merriweather',
              color: Colors.blueGrey[700]),
        ),
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
              // SizedBox(
              //   height: 150,
              // ),
            //  LinearProgressIndicator(),
              wokerText,
        //         RaisedButton(
        // onPressed: _incrementCounter,
        // child: Text('Increment Counter',style: TextStyle(color: Colors.red),),
        // ),
    
            ],
          ),
        ),
      ),
    );
  }
}
