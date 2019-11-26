import 'package:flutter/material.dart';
import 'package:woker/signup_page.dart';

// import 'signup_page.dart';
// import 'package:sns_app/home_page.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController user = new TextEditingController();
  TextEditingController pass = new TextEditingController();
  String msg = '';

// Future<List> _login() async {
//   final response = await http.post("http://10.0.2.2/my_store/login.php", body: {
//     "username": user.text,
//     "password": pass.text,
//   });

//   var datauser = json.decode(response.body);

//   if(datauser.length==0){
//     setState(() {
//           msg="Login Fail";
//         });
//   }else{
//     if(datauser[0]['level']=='admin'){
//        Navigator.pushReplacementNamed(context, '/AdminPage');
//     }else if(datauser[0]['level']=='member'){
//       Navigator.pushReplacementNamed(context, '/MemberPage');
//     }

//     setState(() {
//           username= datauser[0]['username'];
//         });

//   }

//   return datauser;
// }

  final color = const Color(0xffb74093);
  @override
  Widget build(BuildContext context) {
      final upperDiv = Container(
        height: 100,
          width: double.maxFinite,
     
 child: Image.asset('assets/logo2.png',height: 100,width: 100,),      
        );
  final enterEmailText = Container(
        child: Center(
          child: Text(
            'Sign in or Sign up to continue',
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
            keyboardType: TextInputType.phone,
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
              prefix: Text('+91'),
              hintText: 'Enter Mobile no',
              icon: Icon(
                Icons.phone_android,
                color: Colors.blueAccent[400],
              ),
              border: OutlineInputBorder(
                  borderSide:
                      BorderSide(width: 60.0, color: Colors.lightBlue.shade900),
                  borderRadius: BorderRadius.circular(30.0)),
            )),
      ),
    );

   

    final continueButton = Container(
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
          Navigator.push(context, MaterialPageRoute(
            builder: (context){
            return  SignUpPage();
            }
          ));
        },
        // padding: EdgeInsets.all(12),
        color: Colors.blueAccent[200],
        child: Text('Continue',
            style: TextStyle(color: Colors.white, fontSize: 20)),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        //  automaticallyImplyLeading: true,
        //`true` if you want Flutter to automatically add Back Button when needed,
        //or `false` if you want to force your own back button every where
        title: Text('Register'),

        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context, false),
        ),
      ),
      backgroundColor: Colors.white,
      body: Container(
                height: MediaQuery.of(context).size.height / 1,
             width: double.infinity,
        // width: double.infinity,
       child: ListView(
         children: <Widget>[
               upperDiv,
               Center(
          child: ListView(
        
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0,top: 100),
            children: <Widget>[
            
              enterEmailText,
              enterFullName,
             
              continueButton,
            ],
          ),
        ),
         ],
       ),
    
      ),
    );
  }
}
