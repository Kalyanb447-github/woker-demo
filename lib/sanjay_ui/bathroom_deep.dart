import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BathroomDeep extends StatefulWidget {
  static String tag = 'bathroom-deep';
  //BathroomDeep({this.lesson});
 //final String lesson;
  @override
  _BathroomDeepState createState() => _BathroomDeepState();
}

class _BathroomDeepState extends State<BathroomDeep> {
  @override
  Widget build(BuildContext context) {
    var upperDiv = Container(
      height: MediaQuery.of(context).size.height * .3,
      width: double.infinity,
      // color: Colors.red,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: new AssetImage('assets/bathroom.jpg'),
          fit: BoxFit.fill,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //back arrow button
          IconButton(
            onPressed: () => Navigator.pop(context, false),
            icon: Icon(Icons.arrow_back, color: Colors.white),
          ),
          SizedBox(
            height: 100,
          ),
          //text on uppor div
          Text(
            'Bathroom Deep...',
            style: TextStyle(
                color: Colors.white,
                fontSize: 40.0,
                fontWeight: FontWeight.w700),
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
    var offerDiv = Container(
      height: 70,
      // color: Colors.teal,
      child: Row(
        children: <Widget>[
          ClipRect(
            child: Image.asset('assets/offer.jpg'),
            clipBehavior: Clip.antiAlias,
          ),
          Text(
            'Get Upto 50% of on Bathroom \n Cleaning',
            style: TextStyle(
                color: Colors.redAccent,
                fontSize: 20.0,
                fontWeight: FontWeight.w700),
            overflow: TextOverflow.ellipsis,
            maxLines: 5,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
    var centerText = Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 80,
      child: Text(
        'Bathroom Deep Cleaning \n Covers:',
        style: TextStyle(
            color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.w700),
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        textAlign: TextAlign.left,
      ),
    );
    var subTitles = Container(
             height: 230,
             //color: Colors.red,
            child: ListView(
                  children: <Widget>[
                   ListTile(
                     leading: Icon(Icons.brightness_1,color: Colors.lightGreen,),
                     title: Text('Deep cleaning of the entire Bathroom Floors and Wall Tiles'),
                   ),
                    ListTile(
                     leading: Icon(Icons.brightness_1,color: Colors.lightGreen,),
                     title: Text('Disinfection and  cleaning of WC and Washbasin'),
                   ),
                    ListTile(
                     leading: Icon(Icons.brightness_1,color: Colors.lightGreen,),
                     title: Text('Cleaning of all Bathroom fitting'),
                   ),
                  ],
            ),
           );
        var button = Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  
                  height: 50,
                  child: RaisedButton(
                
                      elevation: 4,
                      onPressed: () {},
                      child: Row(
                        children: <Widget>[
                          Text(
                            'View All Cleaning Services',
                            style: TextStyle(
                                color: Colors.black45,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w700),
                            textAlign: TextAlign.center,
                          ),
                          Icon(Icons.arrow_forward)
                        ],
                      )),
                );
                return Scaffold(
                    body: ListView(
                  children: <Widget>[
                    //upper portion
                    upperDiv,
            
                    //offer pottion
                    offerDiv,
            
                    SizedBox(
                      height: 20,
                    ),
                    //Bathroom Deepo Cleaning \n Covers:
                    centerText,
            
                    //sub titles
                   subTitles,
                 
                 
                    //bottom button
                button,
      ],
    ));
  }
}
