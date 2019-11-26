import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:woker/worker_details.dart';

class WorkerList extends StatefulWidget {
  static String tag = 'worker-list-page';
  @override
  _WorkerListState createState() => _WorkerListState();
}

class _WorkerListState extends State<WorkerList> {
  @override
  Widget build(BuildContext context) {
    final listitem = Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(130),
        ),
        // height: 10,
        child: Card(
            borderOnForeground: true,
            semanticContainer: true,
            clipBehavior: Clip.antiAlias,
            margin: EdgeInsets.only(top: .4),
            elevation: 2,
            child: ListTile(
                onTap: () {
                     Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WorkerDetails(
                      // whoYouAre: widget.hirerText,
                      ),
                ),
              );
                },
                // onTap: () => _navigateToFriendDetails(friend, index),
                leading: new CircleAvatar(
                  radius: 30,
                  backgroundImage: new NetworkImage('http://yaffa-cdn.s3.amazonaws.com/adnews/live/images/yafNews/featureImage/ollie_ward2.jpg'),
                ),
                title: new Text(
                  'John doe ',
                  style: TextStyle(
                      color: Colors.blueGrey, fontWeight: FontWeight.bold),
                ),
                subtitle: Text("\u20B9 250/ per hour"),
              
                trailing: Column(
                  children: <Widget>[
                    Text(
                      '3.5 \uD83D\uDC4D (10)',
                      style: TextStyle(
                          color: Colors.lightGreen[300], fontSize: 15),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 5),
                    ),
                    Text(
                      '4 k/m away',
                      style: TextStyle(color: Colors.blueGrey[300]),
                    ),
                  ],
                )
                )
                )
                );
    return Scaffold(
      body: DefaultTabController(
        length: 5,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                backgroundColor: Colors.blueAccent,
                leading: IconButton(
                  onPressed: () => Navigator.pop(context, false),
                  icon: Icon(Icons.arrow_back_ios, color: Colors.white),
                ),
                actions: <Widget>[
                  IconButton(
                    onPressed: () => Navigator.pop(context, false),
                    // onPressed: (){
                    //   Navigator.of(context).pop();
                    // },
                    icon: Icon(Icons.search, color: Colors.white),
                  ),
                ],
                centerTitle: true,
                elevation: 10,
                expandedHeight: 100.0,
                // floating: true,
                // snap: true,

                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
              
                  centerTitle: true,
                  title: Text("Tap, Wash Basin and sink problem",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        // fontFamily:'Merriweather',
                      )),

                  // collapseMode:CollapseMode.pin ,

                  background: Container(
                    color: Colors.blueAccent[400],
                    // child: Image.asset(
                    //   'assets/plumbing.png',
                    // ),
                    // child: Icon(Icons.ac_unit,size: 50,color: Colors.white,),
                  ),
                  //  Image.network(
                  //   "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                  //   fit: BoxFit.cover,
                  // )
                ),

              
              ),
            ];
          },
          body: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, position) {
              return listitem;
            },
          ),
        ),
      ),
    );
  }
}
