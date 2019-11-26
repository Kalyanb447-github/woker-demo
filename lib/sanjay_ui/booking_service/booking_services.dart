import 'package:flutter/material.dart';

class BookingServices extends StatefulWidget {
  @override
  _BookingServicesState createState() => _BookingServicesState();
}

class _BookingServicesState extends State<BookingServices> {
  List<String> title = [
    'How to book a service ?',
    'How toi cancel a booking ?',
    'How to reschedule a booking ?',
    'How to know if my request is confirmed ?',
    'How can i contact a professional ?',
    'When will the professional reach for delivery service ?',
    'How can i rate and review the service of a professional ?',
    'How can i Book the same professional again who delivered my last service ?',
  ];
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
        'Booking Services',
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

    Widget listile({@required String title, @required Function onPressed}) =>
        Container(
            height: 60,
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
                  onTap: onPressed,
                  title: Text(
                    title,
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey[300],
                    size: 15,
                  ),
                )));

    return Scaffold(
        backgroundColor: Colors.grey[50],
        appBar: appBar,
        body: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 1.0),
              listile(
                  title: title[0],
                  onPressed: () {
                    //  Navigator.push(context, any.tab);
                  }),
              SizedBox(height: 1.0),
              listile(
                  title: title[1],
                  onPressed: () {
                    //  Navigator.push(context, any.tab);
                  }),
              SizedBox(height: 1.0),
              listile(
                  title: title[2],
                  onPressed: () {
                    //  Navigator.push(context, any.tab);
                  }),
              SizedBox(height: 1.0),
              listile(
                  title: title[3],
                  onPressed: () {
                    //  Navigator.push(context, any.tab);
                  }),
              SizedBox(height: 1.0),
              listile(
                  title: title[4],
                  onPressed: () {
                    //     Navigator.push(
                    // context,
                    // MaterialPageRoute(
                    //   builder: (context) => MyBookingHAsBEenCancelled(
                    //   //  title: title[1],
                    //   ),
                    // ));
                  }),
              SizedBox(height: 1.0),
              listile(
                  title: title[5],
                  onPressed: () {
                    //  Navigator.push(context, any.tab);
                  }),
              SizedBox(height: 1.0),
              listile(
                  title: title[6],
                  onPressed: () {
                    //  Navigator.push(context, any.tab);
                  }),
              SizedBox(height: 1.0),
              listile(
                  title: title[7],
                  onPressed: () {
                    //  Navigator.push(context, any.tab);
                  }),
            ],
          ),
        ));
  }
}
