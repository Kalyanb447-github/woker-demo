import "package:flutter/material.dart";

class ContactUs extends StatefulWidget {
  static String tag = 'contact-us-page';

  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
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
      color: Colors.blueAccent[400],
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 60),
          ),
          Text(
            'Call to speak with us',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 30),
            // color: Colors.amber,
            padding: EdgeInsets.only(left: 50, right: 50),
            height: 50,
            width: double.infinity,
            child: RaisedButton(
                elevation: 10.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                onPressed: () {
                  // _login();
                  // Navigator.of(context).pushNamed(SignUpPage.tag);
                },
                // padding: EdgeInsets.all(12),
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.blueAccent[400],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                    ),
                    Text('Call Now',
                        style: TextStyle(
                            color: Colors.blueAccent[400],
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ],
                )),
          ),
        ],
      ),
    );

   final writeYourIssueText=Text('Or Write Us your Issue',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.blueAccent[400]),textAlign: TextAlign.center,);

    final enterFullName = Container(
       
      margin: EdgeInsets.only(top: 40,left: 20,right: 20),
      child: Center(
        child: TextField(
            maxLines: 1,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              //  contentPadding: EdgeInsets.all(20),
              // border: InputBorder.none,

              //  focusedBorder: OutlineInputBorder(
              //   borderSide: BorderSide(color: Colors.greenAccent, width: 5.0),
              // ),
              // enabledBorder: OutlineInputBorder(
              //   borderSide: BorderSide(color: Colors.red, width: 5.0),
              // ),
              // labelText: 'Enter Full Name',
              hintText: 'Enter Full Name',
              icon: Icon(
                Icons.person,
                color: Colors.blueAccent[400],
              ),
              border: OutlineInputBorder(
                  borderSide:
                      BorderSide(width: 60.0, color: Colors.lightBlue.shade900),
                  borderRadius: BorderRadius.circular(30.0)),
            )),
      ),
    );
    final enterEmailId = Container(
 margin: EdgeInsets.only(top: 10,left: 20,right: 20),
       child: Center(
        child: TextField(
            maxLines: 1,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              // border: InputBorder.none,

              //  focusedBorder: OutlineInputBorder(
              //   borderSide: BorderSide(color: Colors.greenAccent, width: 5.0),
              // ),
              // enabledBorder: OutlineInputBorder(
              //   borderSide: BorderSide(color: Colors.red, width: 5.0),
              // ),
              // labelText: 'Enter Full Name',
              hintText: 'Enter Email Id',
              icon: Icon(
                Icons.email,
                color: Colors.blueAccent[400],
              ),
              border: OutlineInputBorder(
                  borderSide:
                      BorderSide(width: 60.0, color: Colors.lightBlue.shade900),
                  borderRadius: BorderRadius.circular(30.0)),
            )),
      ),
    );

    final mobileNumber = Container(
 margin: EdgeInsets.only(top: 10,left: 20,right: 20),      child: Center(
        child: TextFormField(
            maxLines: 1,
            // initialValue: '+91 ',
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              prefix: Text('+91'),

              // contentPadding: EdgeInsets.only(left: 5),
              // border: InputBorder.none,

              //  focusedBorder: OutlineInputBorder(
              //   borderSide: BorderSide(color: Colors.greenAccent, width: 5.0),
              // ),
              // enabledBorder: OutlineInputBorder(
              //   borderSide: BorderSide(color: Colors.red, width: 5.0),
              // ),
              labelText: 'Mobile No (Optional)',

              icon: Icon(
                Icons.phone,
                color: Colors.blueAccent[400],
              ),
              border: OutlineInputBorder(
                  borderSide:
                      BorderSide(width: 60.0, color: Colors.lightBlue.shade900),
                  borderRadius: BorderRadius.circular(30.0)),
            )),
      ),
    );

    final sendMassege = Container(
      margin: EdgeInsets.only(top: 40),
      // color: Colors.amber,
      padding: EdgeInsets.only(left: 50, right: 50),
      height: 50,
      width: double.infinity,
      child: RaisedButton(
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        onPressed: () {
          // _login();
          // Navigator.of(context).pushNamed(SignUpPage.tag);
        },
        // padding: EdgeInsets.all(12),
        color: Colors.blueAccent[200],
        child: Text('Send Massege',
            style: TextStyle(color: Colors.white, fontSize: 20)),
      ),
    );
    return Scaffold(
        appBar: appbar,
        body: ListView(
          children: <Widget>[

            upperDiv,
            SizedBox(height: 30,),
            writeYourIssueText,
            enterFullName,
            enterEmailId,
      
            mobileNumber,
            sendMassege,
          ],
        ));
  }
}
