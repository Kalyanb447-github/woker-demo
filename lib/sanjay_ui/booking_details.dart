import 'dart:math';

import 'package:flutter/material.dart';
import 'package:woker/sanjay_ui/my_booking_faq.dart';



class BookingDetails extends StatefulWidget {
  static String tag = 'booking-details-page';
  BookingDetails({this.title});
  String title;
  @override
  _BookingDetailsState createState() => _BookingDetailsState();
}

class _BookingDetailsState extends State<BookingDetails> {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        onPressed: () => Navigator.pop(context, false),
        icon: Icon(Icons.arrow_back, color: Colors.black),
      ),
      title: Text(
        widget.title,
        style: TextStyle(color: Colors.black),
      ),
      actions: <Widget>[
        InkWell(
          onTap: (){
            //           Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => NeedHelp(
            //         // whoYouAre: widget.hirerText,
            //         ),
            //   ),
            // );
          },
                  child: Container(
            padding: EdgeInsets.only(right: 20),
            child: Center(
                child: Text(
              'Need Help?',
              style: TextStyle(color: Colors.blue),
            )),
          ),
        )
      ],
    );
    Widget upperButtons({String text, IconData icon, Function onPressed}) =>
        Expanded(
          child: InkWell(
            onTap: onPressed,
            child: Container(
              margin: EdgeInsets.only(top: 10),
              height: 50,
              child: Card(
                elevation: 5,
                child: Row(
                  children: <Widget>[
                    Icon(
                      icon,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      text,
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
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
            //        Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => WorkerDetails(
            //         // whoYouAre: widget.hirerText,
            //         ),
            //   ),
            // );
          },
          // onTap: () => _navigateToFriendDetails(friend, index),
          leading: new CircleAvatar(
            radius: 30,
            backgroundImage: new NetworkImage(
                'http://yaffa-cdn.s3.amazonaws.com/adnews/live/images/yafNews/featureImage/ollie_ward2.jpg'),
          ),
          title: new Text(
            'John doe ',
            style:
                TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold,fontSize: 20),
          ),
          subtitle: Text(''),
          trailing: Column(
            children: <Widget>[
              Text(
                '3.5 \uD83D\uDC4D (10)',
                style: TextStyle(color: Colors.lightGreen[300], fontSize: 15),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5),
              ),
              Text(
                '4 k/m away',
                style: TextStyle(color: Colors.blueGrey[300]),
              ),
            ],
          ),
        ),
      ),
    );
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: appBar,
      body: ListView(
        children: <Widget>[
          //upper buttons
          Row(
            children: <Widget>[
              upperButtons(
                  text: "View Details", icon: Icons.receipt, onPressed: () {}),
              upperButtons(
                  text: "Reschedule", icon: Icons.refresh, onPressed: () {}),
              upperButtons(
                  text: "Cancel", icon: Icons.cancel, onPressed: () {}),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          //your booking has been confirmed
          Container(
            height: 200,
            // color: Colors.red,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.green,
                        child: Icon(
                          Icons.check,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Bathroom Cleaner Assigned',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 20.0,
                            fontWeight: FontWeight.w700),
                        //  textAlign: TextAlign.left,
                        maxLines: 1,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Text(
                    'Please pay the complete amount online before/after the serviceto arrivel service gurantee and insurence benefits',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18.0,
                        fontWeight: FontWeight.normal),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),

          listitem,

          Container(
          height: 100,
       //  color: Colors.red,
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: <Widget>[
             SizedBox(
               height: 20,
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 10),
               child: Text(
                    'John Doe will arrive arrive at ',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18.0,
                        fontWeight: FontWeight.normal),
                  //  textAlign: TextAlign.left,
                  ),
             ),
                 SizedBox(
               height: 10,
             ),
             Padding(
               padding: const EdgeInsets.symmetric(horizontal: 10),
               child: Text(
                    'Tue. 6th Aug-8:0 am - 8:30 am',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.normal),
                  //  textAlign: TextAlign.left,
                  ),
             ),
           ],
         ),
          ),
          
         Container(
           height: 20,
           color: Colors.grey[100],
         ),

           Container(
             padding: EdgeInsets.all(20),
           height: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Payment Summery ',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  //  textAlign: TextAlign.left,
                  ),
                  SizedBox(height:20),
               Row(
                 mainAxisAlignment:MainAxisAlignment.spaceBetween,
                 children: <Widget>[
                      Text(
                    'Booking Amount',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal),
                  //  textAlign: TextAlign.left,
                  ),
                    Text(
                    'Rs. 750',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal),
                  //  textAlign: TextAlign.left,
                  ),

                 ],
               ),
   Row(
                 mainAxisAlignment:MainAxisAlignment.spaceBetween,
                 children: <Widget>[
                      Text(
                    'Sub Total',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal),
                  //  textAlign: TextAlign.left,
                  ),
                    Text(
                    'Rs. 750',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 16.0,
                        fontWeight: FontWeight.normal),
                  //  textAlign: TextAlign.left,
                  ),

                 ],
               ),
           SizedBox(height: 10,),
                  Row(
                 mainAxisAlignment:MainAxisAlignment.spaceBetween,
                 children: <Widget>[
                      Text(
                    'Amount to be paid',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold),
                  //  textAlign: TextAlign.left,
                  ),
                    Text(
                    'Rs. 750',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  //  textAlign: TextAlign.left,
                  ),

                 ],
               ),
                ],
              )
         ),
             
        ],
      ),
    );
  }
}

