import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class SelectLoation extends StatefulWidget {
  static String tag = 'Select-location-page';
  @override
  _SelectLoationState createState() => _SelectLoationState();
}

class _SelectLoationState extends State<SelectLoation> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: <Widget>[
        // Container(
        //   decoration: BoxDecoration(
        //     image: DecorationImage(
        //   image: AssetImage("assets/location.png"),
        //   fit: BoxFit.cover,
        // ),
        //   ),
        // ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // SizedBox(height: 100.0,),
            // Image.asset(
            //   "assets/logo2.png",
            //   width: 80.0,
            // ),
            SizedBox(
              height: 100.0,
            ),
            Text(
              "Hi,nice to meet you!",
              style: TextStyle(color: Colors.black, fontSize: 30.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
                "Set your location to Start exploring \nService around you",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
           SizedBox(
              height: 30.0,
            ),
                 Image.asset(
              "assets/worker.png",
              width: 80.0,
            ),

              SizedBox(
              height: 20.0,
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
                      color: Colors.green[400],
                      onPressed: () {
                        // currentLocation();
                        Navigator.of(context)
                            .pushReplacementNamed('home-page');
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
                            SizedBox(
                              width: 5,
                            ),
                            Text("Use my current location",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
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

            // ==================================== current location  ========================
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 20,
              ),
              child: Text(
                "We only access indian location while you are using this app to inprove user experience",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
              ),
            ),

            //====================================== current location button ends here ============
           Padding(
              padding: const EdgeInsets.only(top:   150),
              child: FlatButton(
                onPressed: (){},
                                child: Text("or select your location manually",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                    )),
              ),
            ),
        
          ],
        ),
          
      ],
    ));
  }

  currentLocation() async {
    Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

    if (position != null) {
      print(position.latitude);
      List<Placemark> placemark =
          await Geolocator().placemarkFromCoordinates(26.7200217, 88.4262866);
// List<Placemark> placemark = await Geolocator().placemarkFromCoordinates(position.latitude,position.longitude);

      var details = placemark.first;
      print("City:${details.locality}, sublocality:${details.subLocality}");

//  SharedPreferences preferences = await SharedPreferences.getInstance();
//       preferences.setString('selectedCity', details.locality);
//       preferences.setString('selectedSubLocality', details.subLocality);
    } else {}
  }
}
