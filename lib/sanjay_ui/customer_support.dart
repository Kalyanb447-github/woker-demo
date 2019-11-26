import 'package:flutter/material.dart';
class CustomerSupport extends StatefulWidget {
  static String tag='customer-support';
  @override
  _CustomerSupportState createState() => _CustomerSupportState();
}

class _CustomerSupportState extends State<CustomerSupport> {
  @override
  Widget build(BuildContext context) {
final appBar = AppBar(
      backgroundColor: Colors.blueAccent[400],
      // leading: IconButton(
      //   icon: Icon(
      //     Icons.arrow_back_ios,
      //     color: Colors.white,
      //   ),
      //   onPressed: () {
      //     Navigator.of(context).pop();
      //   },
      // ),
      title: Text(
        'Customer Support',
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

 

    Widget listile({@required String title,@required Function onPressed}) => Container(
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
    final contactUs = Container(
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
              leading: Icon(
                Icons.phone_in_talk,
                color: Colors.blueAccent[400],
              ),
              title: Text(
                'Contact us',
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
    final privicyPolicy = Container(
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
              leading: Icon(
                Icons.lock,
                color: Colors.blueAccent[400],
              ),
              title: Text(
                'Privicy Policy',
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

    final abouttUs = Container(
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
              leading: Icon(
                Icons.person,
                color: Colors.blueAccent[400],
              ),
              title: Text(
                'About Us',
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
    final faqAndTerms = Container(
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
              leading: Icon(
                Icons.question_answer,
                color: Colors.blueAccent[400],
              ),
              title: Text(
                'FAQs & TErms',
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

              final signout = Container(
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
            elevation: 5,
            child: ListTile(
            
              title: Text(
                'Sign Out',
                style: TextStyle(
                    color: Colors.blueAccent[400],
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                    textAlign: TextAlign.center,
              ),
          
          
            )));


    return Scaffold(

        backgroundColor: Colors.grey[50],
        appBar: appBar,
        body: Container(
          child: ListView(
            children: <Widget>[
        
              SizedBox(height: 8.0),
              listile(title: 'Manage all your bookings',onPressed: (){
              //  Navigator.push(context, any.tab);
              }),
              
              Container(
                margin: EdgeInsets.only(left: 18,top: 20),
                height: 30,
                child: Text(
                'Popular  Solution',
                style: TextStyle(
                    color: Colors.blueGrey[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                    
                 
              ),
              ), 
                    SizedBox(height: 1.0),
                  listile(title: 'Contact Us',onPressed: (){
              //  Navigator.push(context, any.tab);
              }),
                    SizedBox(height: 1.0),
              listile(title: 'Cancel and Reschedule',onPressed: (){
              //  Navigator.push(context, any.tab);
              }),
              SizedBox(height: 1.0),
               listile(title: 'Account Settings',onPressed: (){
              //  Navigator.push(context, any.tab);
              }),
               Container(
                margin: EdgeInsets.only(left: 18,top: 20),
                height: 30,
                child: Text(
                'F.A.Q',
                style: TextStyle(
                    color: Colors.blueGrey[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
                    
                 
              ),
              ), 
            
                 listile(title: 'Booking Service',onPressed: (){
              //  Navigator.push(context, any.tab);
              }),
            
              SizedBox(height: 1.0),
                  listile(title: 'Paying for Service',onPressed: (){
              //  Navigator.push(context, any.tab);
              }),
             SizedBox(height: 1.0),
                  listile(title: 'A Guide to Woker',onPressed: (){
              //  Navigator.push(context, any.tab);
              }),
            ],
          ),
        ));
  }
}
