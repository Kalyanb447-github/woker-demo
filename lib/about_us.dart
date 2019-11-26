import "package:flutter/material.dart";

class AboutUs extends StatefulWidget {
  static String tag = 'about-us-page';

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    final appbar = AppBar(
      elevation: 0,
      backgroundColor: Colors.blueAccent[400],
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_back_ios, color: Colors.white),
      ),
      title: Text('Contact Us'),
    );

    final upperDiv = Container(
      height: 200,
      width: double.maxFinite,
      color: Colors.blueAccent[400],
      
    );

    final writeYourIssueText = Text(
      'About Us',
      style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.blueAccent[400]),
    );

    return Scaffold(
        appBar: appbar,
        body: ListView(
          children: <Widget>[
            upperDiv,
            SizedBox(
              height: 30,
            ),
           Padding(
             padding: EdgeInsets.only(left: 20),
             child:  writeYourIssueText,
           )
          ],
        ));
  }
}
