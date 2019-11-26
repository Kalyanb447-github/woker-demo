import "package:flutter/material.dart";

class Request extends StatefulWidget {
  static String tag = 'request-page';

  @override
  _RequestState createState() => _RequestState();
}

class _RequestState extends State<Request> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
        });
  }

  @override
  Widget build(BuildContext context) {
    final listitem = Container(
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
                onTap: () {},
                // onTap: () => _navigateToFriendDetails(friend, index),
                leading: new Hero(
                  tag: '',
                  child: new CircleAvatar(
                    radius: 30,
                    backgroundImage: new NetworkImage(
                        'http://yaffa-cdn.s3.amazonaws.com/adnews/live/images/yafNews/featureImage/ollie_ward2.jpg'),
                  ),
                ),
                title: new Text(
                  'John doe ',
                  style: TextStyle(
                      color: Colors.blueGrey, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Tap Wash Basin and sink problem",
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Column(
                  children: <Widget>[
                    Text(
                      '20th jan 09:00-01:00',
                      style: TextStyle(
                          color: Colors.lightGreen[300], fontSize: 13),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                    ),
                    Text(
                      'View Order',
                      style: TextStyle(
                          color: Colors.blueAccent[400],
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ))));
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                
                backgroundColor: Colors.blueAccent[400],
                title: Text(
                  'Request',
                  style: TextStyle(color: Colors.white),
                ),
                actions: <Widget>[
                  IconButton(
                    onPressed: () => Navigator.pop(context, false),
                    // onPressed: (){
                    //   Navigator.of(context).pop();
                    // },
                    icon: Icon(Icons.search, color: Colors.white),
                  ),
                ],
                elevation: 10,
                expandedHeight: 100.0,
                floating: true,
                snap: true,

                // expandedHeight: 200.0,
                // floating: false,
                pinned: true,
                bottom: TabBar(
                  indicatorPadding: EdgeInsets.all(1),
                  indicatorWeight: 5,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Colors.blueAccent[400],
                  labelColor: Colors.black87,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(
                      child: Text(
                        'Upccoming',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                    Tab(
                      child: Text(
                        'Completed',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    )
                  ],
                ),
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,

                  // background: Image.network(
                  //   "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                  //   fit: BoxFit.cover,
                  // ),
                ),
              ),
            ];
          },
          body: TabBarView(


            children: [
              //upcomming page 
              ListView(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 5),
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'New Job Requests',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
              NewJobRequest(),

        

                  Padding(
                    padding: EdgeInsets.only(top: 15, bottom: 5),
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Upcomming Accepted job',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
              UpcommingAcceptedJob(),
                ],
              ),
   //completed page 
              ListView(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                  ),
                  Row(
                    children: <Widget>[
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Completed job Request',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                  Complated(),
                ],
              ),

              // FirstScreen(),
              // SecondScreen(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text('Business'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('School'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blueAccent[400],
        onTap: _onItemTapped,
      ),
    );
  }
}



class NewJobRequest extends StatefulWidget {
  @override
  _NewJobRequestState createState() => _NewJobRequestState();
}

class _NewJobRequestState extends State<NewJobRequest> {
  @override
  Widget build(BuildContext context) {
return Container(
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
                onTap: () {},
                // onTap: () => _navigateToFriendDetails(friend, index),
                leading: new Hero(
                  tag: '',
                  child: new CircleAvatar(
                    radius: 30,
                    backgroundImage: new NetworkImage(
                        'http://yaffa-cdn.s3.amazonaws.com/adnews/live/images/yafNews/featureImage/ollie_ward2.jpg'),
                  ),
                ),
                title: new Text(
                  'John doe ',
                  style: TextStyle(
                      color: Colors.blueGrey, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Tap Wash Basin and sink problem",
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Column(
                  children: <Widget>[
                    Text(
                      '20th jan 09:00-01:00',
                      style: TextStyle(
                          color: Colors.lightGreen[300], fontSize: 13),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                    ),
                    Text(
                      'View Order',
                      style: TextStyle(
                          color: Colors.blueAccent[400],
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
                )
                )
                );
  }
}
class UpcommingAcceptedJob extends StatefulWidget {
  @override
  _UpcommingAcceptedJobState createState() => _UpcommingAcceptedJobState();
}

class _UpcommingAcceptedJobState extends State<UpcommingAcceptedJob> {
  @override
  Widget build(BuildContext context) {
return Container(
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
                onTap: () {},
                // onTap: () => _navigateToFriendDetails(friend, index),
                leading: new Hero(
                  tag: '',
                  child: new CircleAvatar(
                    radius: 30,
                    backgroundImage: new NetworkImage(
                        'http://yaffa-cdn.s3.amazonaws.com/adnews/live/images/yafNews/featureImage/ollie_ward2.jpg'),
                  ),
                ),
                title: new Text(
                  'John doe ',
                  style: TextStyle(
                      color: Colors.blueGrey, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Tap Wash Basin and sink problem",
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Column(
                  children: <Widget>[
                    Text(
                      '20th jan 09:00-01:00',
                      style: TextStyle(
                          color: Colors.lightGreen[300], fontSize: 13),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                    ),
                    Text(
                      'View Order',
                      style: TextStyle(
                          color: Colors.blueAccent[400],
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
                )
                )
                );
  }
}
class Complated extends StatefulWidget {
  @override
  _ComplatedState createState() => _ComplatedState();
}

class _ComplatedState extends State<Complated> {
  @override
  Widget build(BuildContext context) {
   return Container(
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
                onTap: () {},
                // onTap: () => _navigateToFriendDetails(friend, index),
                leading: new Hero(
                  tag: '',
                  child: new CircleAvatar(
                    radius: 30,
                    backgroundImage: new NetworkImage(
                        'http://yaffa-cdn.s3.amazonaws.com/adnews/live/images/yafNews/featureImage/ollie_ward2.jpg'),
                  ),
                ),
                title: new Text(
                  'John doe ',
                  style: TextStyle(
                      color: Colors.blueGrey, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Tap Wash Basin and sink problem",
                  style: TextStyle(
                      fontSize: 10,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Column(
                  children: <Widget>[
                    Text(
                      '20th jan 09:00-01:00',
                      style: TextStyle(
                          color: Colors.lightGreen[300], fontSize: 13),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                    ),
                    Text(
                      'View Order',
                      style: TextStyle(
                          color: Colors.blueAccent[400],
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                )
                )
                )
                );
  }
}