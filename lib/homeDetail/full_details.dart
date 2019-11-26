import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:woker/api/all_api.dart';
import 'package:woker/sanjay_ui/summary_page.dart';
import 'package:woker/sanjay_ui/your_location.dart';
class FullDetails extends StatefulWidget {
    static String tag = 'full-details-page';
    FullDetails({this.title,this.serviceId,this.serviceImage});
    String title;
    String serviceId;
    String serviceImage;

//      String pageTitle;
//  String bannerPath;
//  String serviceParentId;
  @override
  _FullDetailsState createState() => _FullDetailsState();
}

class _FullDetailsState extends State<FullDetails> {
  rechargeapi myapi = new rechargeapi();
 @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
     backgroundColor: Colors.green,
     elevation: 0.0,
    );
    var upperDiv = Container(
     // height: MediaQuery.of(context).size.height * .3,
     height: 150,
      width: double.infinity,
      color: Colors.green,
      // decoration: BoxDecoration(
      //   image: DecorationImage(
      //     image: NetworkImage("${myapi.musurl}/uploads/images/service_icons/${widget.serviceImage}")
      //   ),

      //   color: Colors.green
      // ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.network("${myapi.musurl}/uploads/images/service_icons/${widget.serviceImage}",width: 80.0,),
          SizedBox(height: 5.0,),
          //text on uppor div
          Center(
            child: Text(
            widget.title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700),
              maxLines: 2,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
    // var offerDiv = Container(
    //   height: 70,
    //   // color: Colors.teal,
    //   child: Row(
    //     children: <Widget>[
    //       ClipRect(
    //         child: Image.asset('assets/offer.jpg'),
    //         clipBehavior: Clip.antiAlias,
    //       ),
    //       Text(
    //         'Get Upto 50% of on Bathroom \n Cleaning',
    //         style: TextStyle(
    //             color: Colors.redAccent,
    //             fontSize: 20.0,
    //             fontWeight: FontWeight.w700),
    //         overflow: TextOverflow.ellipsis,
    //         maxLines: 5,
    //         textAlign: TextAlign.center,
    //       ),
    //     ],
    //   ),
    // );
    var centerText = Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 80,
      child: Column(
        children: <Widget>[
            Text(
          'Covers',
          style: TextStyle(
              color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.w700),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
          Container(width: 100,height: 5,color: Colors.black,),
        ],
          
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
                    color: Colors.black,
                
                      elevation: 4,
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                              builder: (context)=>SummaryPage(title: widget.title,),
                              
                        ));
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Proceed',
                            style: TextStyle(
                            
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w700),
                            textAlign: TextAlign.center,
                          ),
                   
                          SizedBox(width: 20,),
                          Icon(Icons.arrow_forward,color: Colors.white,)
                        ],
                      )),
                );
                return Scaffold(
                    
                    body: ListView(
                  children: <Widget>[
                    appBar,
                    //upper portion
                    upperDiv,
            
                    //offer pottion
                   // offerDiv,

            
                    SizedBox(
                      height: 50,
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
