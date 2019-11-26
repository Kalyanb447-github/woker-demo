import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:woker/sanjay_ui/your_location.dart';

class SummaryPage extends StatefulWidget {
  static String tag = 'bathroom-deep';
   SummaryPage({this.title});
  String title;

  @override
  _SummaryPageState createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.pop(context, false),
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: Text(
          'Bathroom Deep Cleaning',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          //summery text
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration:
                BoxDecoration(border: Border(bottom: BorderSide(width: .2))),
            height: 50,
            child: Text(
              'Summary',
              style: TextStyle(
                  color: Colors.black38,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.left,
            ),
          ),

          //no fo bathrooms

          Container(
            height: 100,
            child: Card(
              child: ListTile(
                title: Text(
                  'No. of Bathrooms',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.left,
                ),
                subtitle: Text(
                  '1 Bathroom + 1 Fan',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w700),
                  maxLines: 1,
                ),
                trailing: Text(
                  'Rs. 419',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ),

          //

          //no fo bathrooms

          Container(
            height: 60,
            child: Card(
              child: ListTile(
                title: Text(
                  'Subtotal',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.left,
                ),
                trailing: Text(
                  'Rs. 419',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),

          //no fo bathrooms

          Container(
            height: 70,
            child: Card(
              child: ListTile(
                title: Text(
                  'Total',
                  style: TextStyle(
                      color: Colors.black87,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.left,
                ),
                trailing: Text(
                  'Rs. 419',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
          ),

          //save money on this booking
          Container(
            height: 100,
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Save 100 on this Booking',
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.left,
                    ),
                  ),
                   
                   SizedBox(height: 5,),

                       Expanded(
                                                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      'Become an Woker HomeCare Member and save on all homecare service for 12 month',
                      style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w700),
                      textAlign: TextAlign.left,
                      maxLines: 2,
                    ),
                  ),
                       ),
                       
                  
                ],
              ),
            ),
          ),


          // button 1
          Container(
            margin: EdgeInsets.all(10),

            height: 60,
            child: RaisedButton(
              color: Colors.black,
              onPressed: (){},
               child:  Text(
                      'View Membership',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.left,
                    ),
            ),
          ),
                // button 2
          Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border:Border.all(width: .5),
            ),

            height: 60,
            child: RaisedButton(
              
              color: Colors.white,
              onPressed: (){
                 Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => YourLocationPage(title: widget.title,),
                ));
              },
               child:  Text(
                      'Skip',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.left,
               ),
            ),
          )
        ],
      ),
    );
  }
}
