import "package:flutter/material.dart";

import 'worker_list.dart';

class ServicePage extends StatefulWidget {
  static String tag = 'service-page';

  ServicePage({this.title});
  final String title;

  @override
  _ServicePageState createState() => _ServicePageState();
}

class _ServicePageState extends State<ServicePage> {
  @override
  Widget build(BuildContext context) {
    final silverAppBar = SliverAppBar(
      backgroundColor: Colors.blueAccent,
      leading: IconButton(
        onPressed: () => Navigator.pop(context, false),
        icon: Icon(Icons.arrow_back_ios, color: Colors.white),
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
      expandedHeight: 250.0,
      floating: true,
      snap: true,

      //pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        // collapseMode: CollapseMode.parallax,
        titlePadding: EdgeInsets.only(bottom: 40),
        centerTitle: true,
        title: Text(widget.title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              // fontFamily:'Merriweather',
            )),

        background: Container(
          color: Colors.blueAccent[400],
          child: Image.asset(
            'assets/plumbing.png',
          ),
          // child: Icon(Icons.ac_unit,size: 50,color: Colors.white,),
        ),
        //  Image.network(
        //   "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
        //   fit: BoxFit.cover,
        // )
      ),
      // bottom: TabBar(

      //   labelColor: Colors.black87,
      //   unselectedLabelColor: Colors.greenAccent,
      //   tabs: [
      //     new Tab(icon: new Icon(Icons.info), text: "Tab 1"),
      //     new Tab(
      //         icon: new Icon(Icons.lightbulb_outline), text: "Tab 2"),
      //            new Tab(
      //         icon: new Icon(Icons.lightbulb_outline), text: "Tab 3"),
      //            new Tab(
      //         icon: new Icon(Icons.lightbulb_outline), text: "Tab 2"),

      //            new Tab(
      //         icon: new Icon(Icons.lightbulb_outline), text: "Tab 2"),

      //   ],
      // ),
    );

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
            // selected: true,
            //  enabled: false,
            // dense: false,
            // contentPadding: EdgeInsets.all(10),

            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => WorkerList(
                      // whoYouAre: widget.hirerText,
                      ),
                ),
              );
            },
            isThreeLine: false,
            title: Text(
              'Tap, Wash Basin and sink problem',
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.blueGrey[200],
              size: 15,
            ),
          ),
        ));
    return Scaffold(
      body: DefaultTabController(
        length: 5,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              silverAppBar,
            ];
          },
          body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, position) {
              return listitem;
            },
          ),
        ),
      ),
    );
  }
}
