import "package:flutter/material.dart";
class Chatting extends StatefulWidget {
  @override
  _ChattingState createState() => _ChattingState();
}

class _ChattingState extends State<Chatting> {
    static String tag = 'chating-page';

  @override
  Widget build(BuildContext context) {
        final appBar = AppBar(
      backgroundColor: Colors.blueAccent[400],
      title: Text(
        'Chats',
        style: TextStyle(color: Colors.white),
      ),
      actions: <Widget>[
        // IconButton(
        //   onPressed: () => Navigator.pop(context, false),
        //   // onPressed: (){
        //   //   Navigator.of(context).pop();
        //   // },
        //   // icon: Icon(Icons.search, color: Colors.white),
        // ),
      ],
      elevation: 10,
    );
    return Scaffold(
      appBar: appBar,
      body: ListView(
        children: <Widget>[
        
        ],
      ),
      
    );
  }
}