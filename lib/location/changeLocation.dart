import 'dart:async';

import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import '../api/all_api.dart';
import '../home.dart';

// void main() => runApp(new MaterialApp(
//   home: new HomePage(),
//   debugShowCheckedModeBanner: false,
// ));

class searchLocationFrom extends StatefulWidget {
  @override
  _searchLocationFromState createState() => new _searchLocationFromState();
}

class _searchLocationFromState extends State<searchLocationFrom> {
  TextEditingController controller = new TextEditingController();

  rechargeapi newApi = new rechargeapi();

  List _searchResult = [];

  gotoAreaRoute(String placeId, String placeName) {
    var route =
        new MaterialPageRoute(builder: (BuildContext context) => new Home());
    // return  Navigator.of(context).push(route);
    return Navigator.of(context).push(route);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Your Location'),
        backgroundColor: Colors.green,
        elevation: 0.0,
      ),
      body: new Column(
        children: <Widget>[
          new Container(
            color: Colors.green,
            child: new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Card(
                child: new ListTile(
                  leading: new Icon(Icons.search),
                  title: new TextField(
                    controller: controller,
                    decoration: new InputDecoration(
                        hintText: 'Search Your Location', border: InputBorder.none),
                    onChanged: onSearchTextChanged,
                  ),
                  trailing: new IconButton(
                    icon: new Icon(Icons.cancel),
                    onPressed: () {
                      controller.clear();
                      onSearchTextChanged('');
                    },
                  ),
                ),
              ),
            ),
          ),
          latestSearchResult(),
        ],
      ),
    );
  }

  onSearchTextChanged(String text) async {
    setState(() {
      getyourLocation();
    });
  }

  getyourLocation() async {
    var mydata = await newApi.getlocation(controller.text);
    return mydata;
  }

  latestSearchResult() {
    return new Expanded(
        child: controller.text.isNotEmpty
            ? FutureBuilder(
                future: getyourLocation(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) print(snapshot.error);

                  return snapshot.hasData
                      ? new ListView.builder(
                          itemCount: snapshot.data.length,
                          padding: const EdgeInsets.all(0.0),
                          itemBuilder: (BuildContext context, int index) {
                            return Card(
                              child: ListTile(
                                onTap: () {
                                  storeSearchedPlace("${snapshot.data[index]['location_city']}","${snapshot.data[index]['location_name']}");
                                },
                                title: new Text(
                                  "${snapshot.data[index]['location_name']}",
                                  style: new TextStyle(fontSize: 20.5),
                                ),
                                subtitle: Row(
                                  children: <Widget>[
                                    Text("${snapshot.data[index]['location_city']}"),
                                    Text(",${snapshot.data[index]['location_state']}")
                                  ],
                                )
                              ),
                            );
                          },
                        )
                      : Center(
                          child: CircularProgressIndicator(),
                        );
                },
              )
            : Column(
                children: <Widget>[
                  ListTile(
                    onTap: () {},
                    title: new Text(
                      "Current Location",
                      style: new TextStyle(fontSize: 20.5),
                    ),
                    leading: Icon(Icons.my_location),
                  ),
                  Divider()
                ],
              )

        //  =========================

        );
  }
  storeSearchedPlace(String city,String sublocality)async{

    SharedPreferences preferences;
    preferences = await SharedPreferences.getInstance();
      preferences.setString('selectedCity', city); 
      preferences.setString('selectedSubLocality', sublocality); 

      Navigator.of(context).pushReplacementNamed('home-page');
  }
}
