
import 'package:flutter/material.dart';
class MyBookingFAQ extends StatefulWidget {
  static String tag='my-booking-faq';
  @override
  _MyBookingFAQState createState() => _MyBookingFAQState();
}

class _MyBookingFAQState extends State<MyBookingFAQ> {
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Colors.blueAccent[400],
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      title: Text(
        'My Booking',
        style: TextStyle(color: Colors.white),
      ),
      // actions: <Widget>[
      //   IconButton(
      //     // onPressed: () => Navigator.pop(context, false),
      //     // onPressed: (){
      //     //   Navigator.of(context).pop();
      //     // },
      //     icon: Icon(Icons.search, color: Colors.white),
      //   ),
      // ],
      elevation: 10,
    );
  final profileDic = Container(
      color: Colors.white,
      // decoration: BoxDecoration(
      //     borderRadius: BorderRadius.only(
      //   bottomLeft: Radius.circular(60),
      //   bottomRight: Radius.circular(60),
      // )),
      height: 120,
      child: Row(
        children: <Widget>[
          SizedBox(
            width: 10,
          ),
          CircleAvatar(
            backgroundColor: Colors.blueAccent[100],
            //  minRadius: ,
            radius: 40,
            backgroundImage: new NetworkImage(
                'http://yaffa-cdn.s3.amazonaws.com/adnews/live/images/yafNews/featureImage/ollie_ward2.jpg'),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 30),
              ),
              Text(
                'Kalyan Biswas',
                style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                  //  textAlign: TextAlign.left,
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
              ),
             Row(
               children: <Widget>[
                    Text(
                '4.5 \u2605',
                style: TextStyle(
                    color: Colors.orange,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
             SizedBox(width: 8.0),
              Text(
                '105 reviews',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
               ],
             )

            ],
          ),
      
        ],
      ),
    );
 return Scaffold(

        backgroundColor: Colors.grey[50],
        appBar: appBar,
        body: Container(
          child: ListView(
            children: <Widget>[
        
              SizedBox(height: 8.0),
           
         

              Container(
        height: 80,
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
          //   onTap: onPressed,
              title: Text(
                'AC repire or any Service',
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              subtitle: Text(
                '10:00 PM on 12nd Aug. 1019',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
              ),
              trailing: Container(
                padding: EdgeInsets.all(5),
                color: Colors.red,
                child: Text(
                'Booking Cancelled',
                style: TextStyle(
                    color: Colors.white,
                 
                    fontSize: 12,
                    
                    ),
                    textAlign: TextAlign.center,
                
                ),
              ),
            ))),
            
             Container(
        height: 100,
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
          //   onTap: onPressed,
              title: Center(
                              child: Text(
                  'We will send the details of your service \n provider 1 hour before scheduled time. ',
                  style: TextStyle(
                      color: Colors.black87,
                     fontWeight: FontWeight.w500,
                      fontSize: 18,
                      
                      ),
                      textAlign: TextAlign.center,
                  
                ),
              ),
           
       
            ))),
            Divider(
              height: 1,
            ),

         profileDic,

            Divider(
              height: 1,
            ),
            SizedBox(height: 50,),
            InkWell(
              onTap: (){
                //nav
              },
                          child: Card(
              elevation: 5,
                child: Container(
                  height: 50,
                  child: Center(
                                    child: Text(
                        'Get help with this booking ?',
                        style: TextStyle(
                            color: Colors.blue,
                           fontWeight: FontWeight.w500,
                            fontSize: 25,
                            
                            ),
                            textAlign: TextAlign.center,
                        
                      ),
                  ),
                ),
              ),
            ),
         
            ],
          ),
        ));
  }
}
