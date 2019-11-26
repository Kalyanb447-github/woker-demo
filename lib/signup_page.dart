import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

import 'job_details_page.dart';
// import 'login_page.dart';

class SignUpPage extends StatefulWidget {
  static String tag = 'SignUp-page';
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final color = const Color(0xffb74093);
  Timer _timer;
  int _start = 60;

  void startTimer() {
    const oneSec = const Duration(seconds: 1);
    _timer = new Timer.periodic(
      oneSec,
      (Timer timer) => setState(
            () {
              if (_start < 1) {
                timer.cancel();
              } else {
                _start = _start - 1;
              }
            },
          ),
    );
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final enterFullName = Container(
      margin: EdgeInsets.only(top: 50),
      child: Center(
        child: TextFormField(
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
      margin: EdgeInsets.only(top: 20),
      child: Center(
        child: TextFormField(
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
      margin: EdgeInsets.only(top: 20),
      child: Center(
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
              labelText: 'Mobile No',

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
    final enterYourOtp = Container(
        margin: EdgeInsets.only(bottom: 10),
        child: Center(
          child: Text(
            'Enter Your OTP',
            style: TextStyle(
              color: Colors.blueAccent[400],
            ),
          ),
        ));

    final otp = Container(
      margin: EdgeInsets.only(left: 50, right: 50),
      child: TextFormField(
        keyboardType: TextInputType.number,
        maxLength: 6,
        style: new TextStyle(
            fontSize: 20.0,
            // height: 2.0,
            color: Colors.black),
        textAlign: TextAlign.center,
        autofocus: false,
        initialValue: '1235',
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide:
                  BorderSide(width: 0.0, color: Colors.lightBlue.shade900),
              borderRadius: BorderRadius.circular(20.0)),

          contentPadding: EdgeInsets.only(top: 15),
          // border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        ),
      ),
    );
    final time = Container(
      
       alignment: Alignment.topLeft,
        margin: EdgeInsets.only(bottom: 10),
        child: Center(
          
          child: Text(
            "$_start",
            style: TextStyle(
              color: Colors.blueAccent[400],
            ),
          ),
        ));

    final resendOtp = Container(
        margin: EdgeInsets.only(top: 0),
        alignment: Alignment.centerRight,
        child: FlatButton(
          child: Text(
            'Resend OTP',
            style: TextStyle(color: Colors.blueAccent[400]),
          ),
          onPressed: () {
            // Navigator.of(context).pushNamed(LoginPage.tag);
            startTimer();
          },
        ));

    final signUpNow = Container(
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
          Navigator.of(context).pushNamed(JobDetailsPage.tag);
        },
        // padding: EdgeInsets.all(12),
        color: Colors.blueAccent[200],
        child: Text('Sign up now',
            style: TextStyle(color: Colors.white, fontSize: 20)),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        //  automaticallyImplyLeading: true,
        //`true` if you want Flutter to automatically add Back Button when needed,
        //or `false` if you want to force your own back button every where
        title: Text('Sign up'),

        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        child: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              enterFullName,
              enterEmailId,
              SizedBox(height: 8.0),
              mobileNumber,
              SizedBox(height: 24.0),
              enterYourOtp,
              otp,
              time,
              resendOtp,
              signUpNow,
            ],
          ),
        ),
      ),
    );
  }
}
