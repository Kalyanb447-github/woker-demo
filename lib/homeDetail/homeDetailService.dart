import 'package:woker/sanjay_ui/bathroom_deep.dart';

import 'full_details.dart';
import 'lesson.dart';
import 'package:flutter/material.dart';
import 'deatail.dart';
import '../api/all_api.dart';

class homeDetailService extends StatefulWidget {
 String pageTitle;
 String bannerPath;
 String serviceParentId;

 homeDetailService(this.pageTitle,this.bannerPath,this.serviceParentId);
  
  @override
  _homeDetailServiceState createState() => _homeDetailServiceState();
}

class _homeDetailServiceState extends State<homeDetailService> {

    rechargeapi myapi = new rechargeapi();

   getServiceList()async{
    
    var getData = await myapi.getServicelist(widget.serviceParentId);
    //  print(getData);
    return getData; 

   }


   @override
  void initState() {
    getServiceList();
    super.initState();
  }
 

  @override
  Widget build(BuildContext context) {

Card makeCard(String title,String iconPath,String serviceId, String pageImagePath ) => Card(
          elevation: 8.0,
          margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
          child: Container(
            decoration: BoxDecoration(color: Color(getColorHexFromStr('#eee')),),
            child: ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          leading: Container(
            padding: EdgeInsets.only(right: 12.0),
            decoration: new BoxDecoration(
                border: new Border(
                    right: new BorderSide(width: 1.0, color: Colors.black))),
            child:Image.network("${myapi.musurl}/uploads/images/service_icons/$iconPath") 
          ),
          title: Text(
           "$title",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          // subtitle: Text("Intermediate", style: TextStyle(color: Colors.white)),
          trailing:
              Icon(Icons.keyboard_arrow_right, color: Colors.black, size: 30.0),
          onTap: () {

             Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => FullDetails(title: title,serviceId:serviceId,serviceImage:iconPath))
                    );
          },
        ),
          ),
        );


final makeBottom = Container(
      height: 55.0,
      child: BottomAppBar(
        color: Color.fromRGBO(58, 66, 86, 1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.list, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.help, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.person, color: Colors.white),
              onPressed: () {},
            )
          ],
        ),
      ),
    );

 
     return Scaffold(
      body:
     
      Column(
        children: <Widget>[
          Stack(
                children: <Widget>[
                  Container(
                    height: 180.0,
                    width: double.infinity,
                      decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(200.0),
                          image: DecorationImage(image: AssetImage("${widget.bannerPath}.png"),fit: BoxFit.cover
                          )
                          ),
                    
                  ),
                  
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 15.0),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 15.0),
                          Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              icon: Icon(Icons.arrow_back),
                              onPressed: () {
                                Navigator.of(context).pushReplacementNamed('home-page');
                              },
                              color: Colors.white,
                              iconSize: 30.0,
                            ),
                          ),
                          SizedBox(
                              width: MediaQuery.of(context).size.width - 120.0),
                          Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              icon: Icon(Icons.menu),
                              onPressed: () {},
                              color: Colors.white,
                              iconSize: 30.0,
                            ),
                          ),
                          SizedBox(height: 15.0),
                        ],
                      ),
                      SizedBox(height: 50.0),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          '${widget.pageTitle}',
                          style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,color: Colors.white),
                        ),
                      ),
                     
                    ],
                  )
                ],
              ),
              Expanded(
                child:FutureBuilder(
          future: getServiceList(),
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);

            return snapshot.hasData
                ? new ListView.builder(
                   shrinkWrap: true,
                     physics: ClampingScrollPhysics(),
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return  makeCard('${snapshot.data[index]['service_title']}'
                      ,'${snapshot.data[index]['service_icon']}',
                      '${snapshot.data[index]['id'].toString()}',
                      "${snapshot.data[index]['page_image']}"
                      );
                      
                    },
                  )
                : Center(
                  child: CircularProgressIndicator(),
                );
          },
        ), 
              )
          
        ],
      ),
     
      bottomNavigationBar: makeBottom,
    );
  }


  int getColorHexFromStr(String colorStr) {
    colorStr = "FF" + colorStr;
    colorStr = colorStr.replaceAll("#", "");
    int val = 0;
    int len = colorStr.length;
    for (int i = 0; i < len; i++) {
      int hexDigit = colorStr.codeUnitAt(i);
      if (hexDigit >= 48 && hexDigit <= 57) {
        val += (hexDigit - 48) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 65 && hexDigit <= 70) {
        // A..F
        val += (hexDigit - 55) * (1 << (4 * (len - 1 - i)));
      } else if (hexDigit >= 97 && hexDigit <= 102) {
        // a..f
        val += (hexDigit - 87) * (1 << (4 * (len - 1 - i)));
      } else {
        throw new FormatException("An error occurred when converting a color");
      }
    }
    return val;
  }
}


