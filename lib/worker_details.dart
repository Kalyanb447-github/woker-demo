import "package:flutter/material.dart";
import 'package:woker/index_page.dart';

class WorkerDetails extends StatefulWidget {
  static String tag = 'worker-detail-page';
  @override
  _WorkerDetailsState createState() => _WorkerDetailsState();
}

class _WorkerDetailsState extends State<WorkerDetails> {
  Color bookBtnColor = Colors.blueAccent[400];
  // TabController tabController;
  // //initialize function
  // @override
  // void initState() {
  //   tabController=TabController(length: 2,vsync: this);
  //   super.initState();
  // }
  //   //dispoose function
  // @override
  // void dispose() {
  //   tabController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    final appbar = AppBar(
      backgroundColor: Colors.blueAccent[400],
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_back_ios, color: Colors.white),
      ),
      actions: <Widget>[
        // color: Colors.red,
        // margin: EdgeInsets.only(right: 20),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.share, color: Colors.white),
        ),
      ],
    );

    final upperDiv = new Container(
      height: MediaQuery.of(context).size.height * .30,
      color: Colors.blueAccent[400],
      child: appbar,
    );
    final profilePic = Container(
      alignment: Alignment.topCenter,
      padding: new EdgeInsets.only(
          top: MediaQuery.of(context).size.height * .15,
          right: 30.0,
          left: 30.0),
      child: new CircleAvatar(
        radius: 50,
        backgroundImage: new NetworkImage(
            'http://yaffa-cdn.s3.amazonaws.com/adnews/live/images/yafNews/featureImage/ollie_ward2.jpg'),
      ),
    );

    //Lower div
    final lovweDiv = new Container(
      height: MediaQuery.of(context).size.height * .70,
      color: Colors.red[100],
      child: Column(
        children: <Widget>[
          Container(
            height: 140,
            width: MediaQuery.of(context).size.width,
            color: Colors.grey[100],
          ),

          //tabbar
          //  TabBar(
          //    controller: tabController,
          //    tabs: <Widget>[
          //      Tab(icon: Icon(Icons.ac_unit),),
          //                                Tab(icon: Icon(Icons.ac_unit),),

          //    ],
          //  ),
          //tab bar body view
          //  TabBarView(

          //    controller: tabController,
          //    children: <Widget>[
          //      Text('data'),
          //      Text('data'),
          //    ],
          //  ),
        ],
      ),
    );
    final middleDiv = Container(
      alignment: Alignment.topCenter,
      padding: new EdgeInsets.only(
          top: MediaQuery.of(context).size.height * .20,
          right: 30.0,
          left: 30.0),
      child: new Container(
        // color: Colors.red,
        height: 200.0,
        width: MediaQuery.of(context).size.width,
        child: Container(
          child: new Card(
              color: Colors.white,
              elevation: 4.0,
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width * .60,
                      ),
                      Text(
                        '3.5 \u2605 (100)',
                        style: TextStyle(
                          color: Colors.lightGreen[300],
                          fontSize: 12,
                        ),
                        // maxLines: 1,
                      ),
                    ],
                  ),
                  //
                  SizedBox(
                    height: 50,
                  ),
                  //
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      //name
                      Text(
                        'John Doe',
                        style: TextStyle(
                          color: Colors.blueGrey[300],
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                        // maxLines: 1,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  Row(
                    //  mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.only(left: 15),
                          color: Colors.blueAccent[400],
                          height: 50,
                          width: 120,
                          child: RaisedButton(
                            color: bookBtnColor,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Icon(Icons.check_circle, color: Colors.white),
                                Text(
                                  'Book Now',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            onPressed: () {
                              setState(() {
                                bookBtnColor = Colors.lightGreenAccent[100];
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => IndexPage(
                                        // whoYouAre: widget.hirerText,
                                        ),
                                  ),
                                );
                              });
                            },
                            //icon: Icon(Icons.check_circle,color: Colors.white,),
                          )),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                          color: Colors.blueAccent[400],
                          height: 50,
                          width: 120,
                          child: RaisedButton(
                            elevation: 10,
                            color: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Icon(Icons.message,
                                    color: Colors.blueAccent[400]),
                                Text(
                                  'Message',
                                  style: TextStyle(
                                      color: Colors.blueAccent[400],
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            onPressed: () {
                              setState(() {});
                            },
                            //icon: Icon(Icons.check_circle,color: Colors.white,),
                          )),
                    ],
                  ),
                ],
              )),
        ),
      ),
    );

    return Scaffold(
      body: Stack(
        children: <Widget>[
          ListView(
            children: <Widget>[
              upperDiv,
              lovweDiv,
            ],
          ),
          middleDiv,
          profilePic,
        ],
      ),
    );
  }
}
