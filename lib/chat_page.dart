import "package:flutter/material.dart";

class Chat extends StatefulWidget {
  static String tag = 'chat-page';

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
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
    final listitem =  Container(
        height: 75,
        child: Card(
            borderOnForeground: true,
            semanticContainer: true,
            clipBehavior: Clip.antiAlias,
            margin: EdgeInsets.only(top:.2),
            elevation: 2,
            child: ListTile(
              // contentPadding: EdgeInsets.only(top: 5),

                onTap: () {},
                // onTap: () => _navigateToFriendDetails(friend, index),
                leading: new Hero(

                  tag: 'a',
                  child: new CircleAvatar(
                     
                    radius: 30,
                    backgroundImage: new NetworkImage(
                        'http://yaffa-cdn.s3.amazonaws.com/adnews/live/images/yafNews/featureImage/ollie_ward2.jpg'),
                  ),
                ),
                title: new Text(
                  'John doe ',
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                subtitle: Text(
                  "Tap Wash Basin and sink problem",
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold),
                  maxLines: 1,
                ),
                trailing: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 10),
                    ),
                    Text(
                      '3 min ago',
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontSize: 13,
                      ),
                    ),
                  ],
                ))));
    return Scaffold(
      appBar: appBar,
      body: ListView(
        children: <Widget>[
          listitem,
           listitem,
            listitem,
             listitem,
              listitem,
               listitem,
                listitem,
           listitem,
            listitem,
             listitem,
              listitem,
               listitem,



        ],
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
