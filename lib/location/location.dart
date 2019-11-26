import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'changeLocation.dart';

class location extends StatefulWidget {
  @override
  _locationState createState() => _locationState();
}

class _locationState extends State<location> {
  var detail;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/location.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // SizedBox(height: 100.0,),
              Image.asset(
                "assets/logo2.png",
                width: 80.0,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Hi,nice to see you!",
                style: TextStyle(color: Colors.grey, fontSize: 20.0),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "See Service Around",
                style: TextStyle(color: Colors.white, fontSize: 28.0),
              ),
              // ==================================== current location button ========================
              new Container(
                width: MediaQuery.of(context).size.width,
                margin:
                    const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
                alignment: Alignment.center,
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new FlatButton(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        color: Colors.blueAccent,
                        onPressed: () {
                          currentLocation();
                        },
                        child: new Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 15.0,
                            horizontal: 15.0,
                          ),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.gps_fixed,
                                color: Colors.white,
                              ),
                              Text(" Your Current Location",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0,
                                  )),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //====================================== current location button ends here ============

              // ==================================== current location button ========================
              new Container(
                width: MediaQuery.of(context).size.width,
                margin:
                    const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
                alignment: Alignment.center,
                child: new Row(
                  children: <Widget>[
                    new Expanded(
                      child: new FlatButton(
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        color: Colors.white,
                        onPressed: () {
                          var route = new MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  new searchLocationFrom());
                          // return  Navigator.of(context).push(route);
                          return Navigator.of(context).push(route);
                        },
                        child: new Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 15.0,
                            horizontal: 15.0,
                          ),
                          child: new Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Icon(Icons.search),
                              Text(
                                " Some other location",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.blueAccent,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "$detail",
                style: TextStyle(color: Colors.white),
              )
              //====================================== current location button ends here ============
            ],
          ),
        )
      ],
    ));
  }

  currentLocation() async {
    Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    print(position.latitude);

    if (position != null) {
// List<Placemark> placemark = await Geolocator().placemarkFromCoordinates(26.7200217,88.4262866);
      List<Placemark> placemark = await Geolocator()
          .placemarkFromCoordinates(position.latitude, position.longitude);

      var details = placemark.first;
      print("City:${details.locality}, sublocality:${details.subLocality}");
      setState(() {
        detail = "City:${details.locality}, sublocality:${details.subLocality}";
      });
      SharedPreferences preferences = await SharedPreferences.getInstance();
      preferences.setString('selectedCity', details.locality);
      preferences.setString('selectedSubLocality', details.subLocality);

      Navigator.of(context).pushReplacementNamed('home-page');
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(20.0),
            ),
            title: new Text(
              "Opps",
              style: TextStyle(
                  color: Colors.blueAccent, fontWeight: FontWeight.w600),
            ),
            content: new Text(
              "Please try after sometime or Choose Location Manually",
            ),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog

              new FlatButton(
                color: Colors.green,
                child: new Text(
                  "Choose Manually",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
                onPressed: () async {
                  Navigator.of(context).pop();
                  var route = new MaterialPageRoute(
                      builder: (BuildContext context) =>
                          new searchLocationFrom());
                  // return  Navigator.of(context).push(route);
                  return Navigator.of(context).push(route);
                },
              ),

              new FlatButton(
                color: Colors.red,
                child: new Text(
                  "Cancel",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
                onPressed: () async {
                  Navigator.of(context).pop();
                  Navigator.of(context).pushReplacementNamed('/homepage');
                },
              ),
            ],
          );
        },
      );
    }
  }
}
