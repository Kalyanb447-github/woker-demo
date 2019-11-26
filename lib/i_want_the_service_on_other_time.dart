import 'package:flutter/material.dart';

class IWantTheSheServiceOnOtherTime extends StatefulWidget {
  IWantTheSheServiceOnOtherTime({@required this.title});
  String title;
  @override
  _IWantTheSheServiceOnOtherTimeState createState() => _IWantTheSheServiceOnOtherTimeState();
}

class _IWantTheSheServiceOnOtherTimeState extends State<IWantTheSheServiceOnOtherTime> {
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
        widget.title,
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
    return Scaffold(
      appBar: appBar,
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'We would request you to place a new request for your preferred date and time.',
              style: TextStyle(
                  color: Colors.blueGrey[400],
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
              textAlign: TextAlign.left,
              overflow: TextOverflow.fade,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'If you still need help, please schedule a callback to get in touch with our team.',
              style: TextStyle(
                  color: Colors.blueGrey[400],
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
              textAlign: TextAlign.left,
              overflow: TextOverflow.fade,
            ),
          ),
          SizedBox(
            height: 30,
          ),
         
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Please tell us your issue (min 100 characters)',
                hintStyle: TextStyle(fontSize: 15),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 60,
            child: Card(
              child: Center(
                child: Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
