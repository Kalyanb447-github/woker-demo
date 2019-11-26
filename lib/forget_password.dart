import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  static String tag = 'SignUp-page';
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    final enterEmailText = Container(
        child: Center(
          child: Text(
            'Enter Your Registerd Email/Mobile \n we will send password reset info',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ));

   final enterFullName = Container(
      margin: EdgeInsets.only(top: 30),
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

   

    final submitButton = Container(
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
        child: Text('Submit',
            style: TextStyle(color: Colors.white, fontSize: 20)),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        //  automaticallyImplyLeading: true,
        //`true` if you want Flutter to automatically add Back Button when needed,
        //or `false` if you want to force your own back button every where
        title: Text('Forget Password'),

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
              enterEmailText,
              enterFullName,
             
              submitButton,
            ],
          ),
        ),
      ),
    );
  }
}
