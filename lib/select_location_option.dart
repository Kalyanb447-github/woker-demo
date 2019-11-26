import 'package:flutter/material.dart';

import 'login_page.dart';
import 'search_for_area.dart';
// import 'package:geolocation/geolocation.dart';
// import 'dart:async';

class SelectLocationOption extends StatefulWidget {
  static String tag = 'Select-location-option';
  @override
  _SelectLocationOptionState createState() => _SelectLocationOptionState();
}

class _SelectLocationOptionState extends State<SelectLocationOption> {
  @override
  Widget build(BuildContext context) {
    final upperDiv = Container(
      margin: EdgeInsets.only(top: 200),
      child: Center(
        child: Column(
          children: <Widget>[
            Text(
              'We will try to make your day nice',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
            ),
            Text(
              'Choose your location',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 32,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );

    final chooseCurrentLocationButton = Container(
      margin: EdgeInsets.only(top: 60),
      // color: Colors.amber,
      padding: EdgeInsets.only(left: 20, right: 20),
      height: 50,
      width: double.infinity,
      child: RaisedButton(
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginPage(
                    // whoYouAre: widget.workerText,
                    ),
              ));
      
        },
        // padding: EdgeInsets.all(12),
        color: Colors.blueAccent[200],
        child: Row(
          children: <Widget>[
            Icon(
              Icons.gps_fixed,
              color: Colors.white,
            ),
            Padding( 
              padding: EdgeInsets.only(right: 20),
            ),
            Text('Your current location',
                style: TextStyle(color: Colors.white, fontSize: 20)),
          ],
        ),
      ),
    );

    final searchYourLocationButton = Container(
      margin: EdgeInsets.only(top: 30),
      // color: Colors.amber,
      padding: EdgeInsets.only(left: 20, right: 20),
      height: 50,
      width: double.infinity,
      child: RaisedButton(
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SearchForArea(
                    // whoYouAre: widget.workerText,
                    ),
              ));
          // _login();
          // Navigator.of(context).pushNamed(SignUpPage.tag);
        },
        // padding: EdgeInsets.all(12),
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Icon(
              Icons.search,
              color: Colors.black,
            ),
            Padding(
              padding: EdgeInsets.only(right: 20),
            ),
            Text('Select your location',
                style: TextStyle(color: Colors.black, fontSize: 20)),
          ],
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        //  automaticallyImplyLeading: true,
        //`true` if you want Flutter to automatically add Back Button when needed,
        //or `false` if you want to force your own back button every where
        title: Text('Location'),

        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        height: MediaQuery.of(context).size.height / 1,
        width: double.infinity,
        // width: double.infinity,
        child: ListView(
          children: <Widget>[
            upperDiv,
            Center(
              child: ListView(
                shrinkWrap: true,
                padding: EdgeInsets.only(
                  left: 24.0,
                  right: 24.0,
                ),
                children: <Widget>[
                  chooseCurrentLocationButton,
                  searchYourLocationButton,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GoogleMapTest extends StatefulWidget {
  @override
  _GoogleMapTestState createState() => _GoogleMapTestState();
}

class _GoogleMapTestState extends State<GoogleMapTest> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
