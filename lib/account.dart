import "package:flutter/material.dart";

class Account extends StatefulWidget {
  static String tag = 'account-page';

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      backgroundColor: Colors.blueAccent[400],
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      title: Text(
        'Account',
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
      height: 100,
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
                'John doe',
                style: TextStyle(
                    color: Colors.blueAccent[400],
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ],
          ),
          Container(
            height: 50,
            margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * .3, bottom: 20),
            width: 50,
            child: Card(
              elevation: 2,
              child: Icon(
                Icons.create,
                color: Colors.black38,
              ),
            ),
          )
        ],
      ),
    );

    final manageAddress = Container(
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
                Icons.location_on,
                color: Colors.blueAccent[400],
              ),
              title: Text(
                'Manage Address',
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
        backgroundColor: Colors.white,
        appBar: appBar,
        // body: ListView(
        //   children: <Widget>[
        //     circleImageDiv,
        //   ],
        // ),
        body: Container(
          child: ListView(
            children: <Widget>[
              profileDic,
              Divider(
                height: 5,
              ),
              SizedBox(height: 8.0),
              manageAddress,
              SizedBox(height: 2.0),
              contactUs,
              SizedBox(height: 1.0),
              privicyPolicy,
              SizedBox(height: 1.0),
              abouttUs,
              SizedBox(height: 1.0),
              faqAndTerms,
              SizedBox(height: 40.0),
              signout,
            ],
          ),
        ));
  }
}
