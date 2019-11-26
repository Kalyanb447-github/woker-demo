import 'package:flutter/material.dart';

class SearchForArea extends StatefulWidget {
  static String tag = 'search-for-area-page';
  @override
  _SearchForAreaState createState() => _SearchForAreaState();
}

class _SearchForAreaState extends State<SearchForArea> {
  @override
  Widget build(BuildContext context) {
    final searchForArea = Container(
      height: 130,
      color: Colors.white,
      padding: EdgeInsets.only(left: 10, right: 10, top: 40),
      child: Stack(
        children: <Widget>[
          TextField(
            onTap: () {
              // SearchBarTest();
            },
            onChanged: (value) {
              // filterSearchResults(value);
            },
            // controller: editingController,
            decoration: InputDecoration(
                  
                // labelText: "Search",
                hintText: "Search for area,street,landmark",
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(25.0)))),
          ),
        ],
      ),
    );
    final useCurrentLocation = Container(
      color: Colors.white,
      width: double.infinity,
      height: 70,
      child: RaisedButton(
        color: Colors.white,
        onPressed: () {},
        child: Row(
          children: <Widget>[
            Icon(
              Icons.gps_fixed,
              color: Colors.blueAccent[400],
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              'Use current location',
              style: TextStyle(
                  color: Colors.blueAccent[400],
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
    final recentText = Container(
         margin: EdgeInsets.only(top: 20),
                child:Row(
                  children: <Widget>[
                    SizedBox(
                      width: 20,
                  
                    ),
                     Text('Recent',style: TextStyle(color: Colors.blueGrey),textAlign: TextAlign.left,),
                  ],
                ),
    
              );
  final recentAddresses = Container(
      color: Colors.white,
      width: double.infinity,
      height: 80,
     child: Center(
       child: ListTile(
         leading:    Icon(
                Icons.location_on,
                color: Colors.blueAccent[400],
              ),
              title:Text('Sliguri BusStop,Siliguri,West Bengal,india',style: TextStyle(color: Colors.black,fontSize: 14,),maxLines: 3,),

              trailing:  Icon(
                Icons.arrow_forward_ios,size: 20,
                color: Colors.grey[400],
              ),
                     
       ),
     ),
    );              
        return Scaffold(
          resizeToAvoidBottomPadding: false,
          body: Column(
            children: <Widget>[
              searchForArea,
              SizedBox(
                height: 5,
              ),
              useCurrentLocation,
              recentText,
                SizedBox(
                height: 5,
              ),
              recentAddresses,
        ],
      ),
    );
  }
}



