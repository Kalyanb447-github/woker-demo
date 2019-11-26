import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:woker/location/changeLocation.dart';

import 'homeDetail/homeDetailService.dart';
import 'api/all_api.dart';
import 'package:shimmer/shimmer.dart';




class Home extends StatefulWidget {
   static String tag = 'home-page';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>
    with SingleTickerProviderStateMixin {
  TabController controller;
   
   final TextEditingController locationController = new TextEditingController();
  var city;
  var sublocality;

   
rechargeapi newApi = new rechargeapi();

getOrder() async {
    List data = await newApi.getBannerList();
    return data;

  }


  getmostSearched() async {
    List data1 = await newApi.getMostSearchedList();
    return data1;

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
   

   _loadSavedData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();

    if (preferences.getString('selectedCity') != null &&
        preferences.getString('selectedCity').isNotEmpty) {
      setState(() {
      var  city = preferences.getString("selectedCity");
       var sublocality = preferences.getString("selectedSubLocality");
       locationController.text ="$city , $sublocality";
        
      });
      
    } else {
      locationController.text ="Select Your Location";
    }
  }

  @override
  void initState() {
    _loadSavedData();
    getOrder();
    super.initState();
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 200.0,
                    width: double.infinity,
                    color: Color(getColorHexFromStr('#71b59d')),
                  ),
                  Positioned(
                    bottom: 50.0,
                    right: 100.0,
                    child: Container(
                      height: 400.0,
                      width: 400.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200.0),
                          color: Color(getColorHexFromStr('#b3d7af'))
                              .withOpacity(0.4)),
                    ),
                  ),
                  Positioned(
                    bottom: 100.0,
                    left: 150.0,
                    child: Container(
                        height: 300.0,
                        width: 300.0,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(150.0),
                            color: Color(getColorHexFromStr('#b3d7af'))
                                .withOpacity(0.5))),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 15.0),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 15.0),
                          Container(
                            alignment: Alignment.topLeft,
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                border: Border.all(
                                    color: Colors.white,
                                    style: BorderStyle.solid,
                                    width: 2.0),
                                    
                                image: DecorationImage(
                                    image:AssetImage('assets/logo1.png')
                                    )
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
                      SizedBox(height: 20.0),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15.0, 0, 15.0, 0.0),
                        // =========================location starts here ====================
                       child:  Column(
               mainAxisAlignment: MainAxisAlignment.start,
               crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
               
               Text("You are in",style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w500),),
               Container(
                 
                 decoration: BoxDecoration(
                   border: Border(bottom: BorderSide(width: 1.0, color: Colors.black),)
                 ),
              
                child: Row(
                  children: <Widget>[
                    Icon(Icons.location_on,color: Colors.black,),
                     Padding(padding: const EdgeInsets.only(left: 5.0),),
                    Expanded(
                      child:TextField(
                        
                        controller: locationController,
                         
                        style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.w500),
                         decoration: InputDecoration(
                           border: InputBorder.none,

                           ),
                        onTap: (){
                          var route = new MaterialPageRoute(
                 builder:(BuildContext context)=>new searchLocationFrom()
               );
              // return  Navigator.of(context).push(route);
              return Navigator.of(context).push(route);
                        },
                      ),
                     
                      //  Container(
                      //   child: Text("Panitanki More,Siliguri,W.B",style: TextStyle(fontSize: 20.0),),
                      // ),
                    ),
                      Icon(Icons.search,color: Colors.black,),
                  ],
                ),
                 ),
                SizedBox(height: 6.0,)
              ],
            ),
                        
                        // ====================== Location details ends  here ===================
                      ),
                      
                      SizedBox(height: 20.0),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(5.0),
                          child: TextFormField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(Icons.search,
                                      color:
                                          Color(getColorHexFromStr('#71b59d')),
                                      size: 30.0),
                                  contentPadding:
                                      EdgeInsets.only(left: 15.0, top: 15.0),
                                  hintText: 'Search Your Service',
                                  hintStyle: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Quicksand'))),
                        ),
                      ),
                      SizedBox(height: 10.0)
                    ],
                  )
                ],
              ),
              SizedBox(height: 10.0),
              Stack(
                children: <Widget>[
                  SizedBox(height: 10.0),
                  Material(
                      // elevation: 1.0,
                      child: Container(height: 75.0, color: Colors.white)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      GestureDetector(
                        onTap: (){
                            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => homeDetailService("Household","assets/banHousehold",'1')
                    )
                    );
                        },
                        child: 
                     
                      Container(
                        height: 75.0,
                        width: MediaQuery.of(context).size.width / 4,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 40.0,
                              
                              child: Image.asset('assets/icons/household.png',color:Color(getColorHexFromStr('#500041')),),
                            ),
                            Text(
                              'Household',
                              style: TextStyle(fontFamily: 'Quicksand',fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                       ),
                       GestureDetector(
                         onTap: (){

                            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => homeDetailService("Parlour","assets/banParlour",'2')
                    )
                    );

                         },
                         child:                     
                      Container(
                        height: 75.0,
                        width: MediaQuery.of(context).size.width / 4,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 40.0,
                              // decoration: BoxDecoration(
                              //     image: DecorationImage(
                              //         image:
                              //             AssetImage('assets/icons/parlour.png')
                              //             )
                              //             ),
                              child: Image.asset('assets/icons/parlour.png',color:Color(getColorHexFromStr('#500041')),),
                            ),
                            Text(
                              'Parlour',
                              style: TextStyle(fontFamily: 'Quicksand',fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                  ),


                     GestureDetector(
                       onTap: (){
                           Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => homeDetailService("Fitness","assets/pageHeader/fitness",'3')
                    )
                    );

                       },
                       child: 
                   
                      Container(
                        height: 75.0,
                        width: MediaQuery.of(context).size.width / 4,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 40.0,
                              // decoration: BoxDecoration(
                              //     image: DecorationImage(
                              //         image: AssetImage('assets/icons/fitness.png'))),
                              child: Image.asset('assets/icons/fitness.png',color:Color(getColorHexFromStr('#500041')),),
                            ),
                            Text(
                              'Fitness',
                              style: TextStyle(fontFamily: 'Quicksand',fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                        ),

                        GestureDetector(
                          onTap: (){

                            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => homeDetailService("Hardware","assets/pageHeader/hardware",'4')
                    )
                    );

                          },
                          child: 
                      
                      Container(
                        height: 75.0,
                        width: MediaQuery.of(context).size.width / 4,
                        child: Column(
                          children: <Widget>[
                            Container(
                              height: 40.0,
                              // decoration: BoxDecoration(
                              //     image: DecorationImage(
                              //         image:
                              //             AssetImage('assets/icons/hardware.png'))),
                               child: Image.asset('assets/icons/welder.png',color:Color(getColorHexFromStr('#500041')),),
                            ),
                            Text(
                              'Hardware',
                              style: TextStyle(fontFamily: 'Quicksand',fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      )
                        )
                    ],
                  ),
                  
                ],
              ),
               
                
                 
                    //================================== Row 2 start here =====================
                   Stack(
                children: <Widget>[
                  SizedBox(height: 10.0),
                  Material(
                     elevation: 5.0,
                      child: Container(height: 75.0, color: Colors.white)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[

                      GestureDetector(
                        onTap: (){
                            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => homeDetailService("IT Services","assets/pageHeader/it",'5')
                    )
                    );

                        },
                        child: 
                     
                      Container(
                        height: 75.0,
                        width: MediaQuery.of(context).size.width / 4,
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 5.0),
                            Container(
                              color: Colors.white,
                              height: 40.0,
                              // decoration: BoxDecoration(
                              //     image: DecorationImage(
                              //         image: AssetImage('assets/icons/website.png'))),

                               child: Image.asset('assets/icons/website2.png',color:Color(getColorHexFromStr('#500041')),),
                            ),
                            Text(
                              ' IT Services',
                              style: TextStyle(fontFamily: 'Quicksand',fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                       ),

                       GestureDetector(
                         onTap: (){
                           Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => homeDetailService("Planner","assets/pageHeader/planner",'6')
                    )
                    );

                         },
                         child: 
                      
                      Container(
                        height: 75.0,
                        width: MediaQuery.of(context).size.width / 4,
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 5.0),
                            Container(
                              height: 40.0,
                              // decoration: BoxDecoration(
                              //     image: DecorationImage(
                              //         image:
                              //             AssetImage('assets/icons/planner.png'))),
                               child: Image.asset('assets/icons/planner2.png',color:Color(getColorHexFromStr('#500041')),),
                            ),
                            Text(
                              'Planners',
                              style: TextStyle(fontFamily: 'Quicksand',fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                       ),

                       GestureDetector(
                         onTap: (){
                           Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => homeDetailService("ProfessionalS","assets/pageHeader/professional",'7')
                    )
                    );

                         },
                         child: 
                      
                      Container(
                        height: 75.0,
                        width: MediaQuery.of(context).size.width / 4,
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 5.0),
                             Container(
                              height: 40.0,
                              // decoration: BoxDecoration(
                              //     image: DecorationImage(
                              //         image: AssetImage('assets/icons/prof.png',))),

                              child: Image.asset('assets/icons/prof2.png',color:Color(getColorHexFromStr('#500041')),),
                            ),
                           
                            Text(
                              'ProfessionalS',
                              style: TextStyle(fontFamily: 'Quicksand',fontWeight: FontWeight.w500),
                            ),
                            
                           
                          ],
                        ),
                      ),
                       ),

                       GestureDetector(
                         onTap: (){
                            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => homeDetailService("Learnings","assets/pageHeader/learning",'8')
                    )
                    );
                         },
                         child: 
                      
                      Container(
                        height: 75.0,
                        width: MediaQuery.of(context).size.width / 4,
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 5.0),
                            Container(
                              height: 40.0,
                              // decoration: BoxDecoration(
                              //     image: DecorationImage(
                              //         image:
                              //             AssetImage('assets/icons/reading.png'))),

                               child: Image.asset('assets/icons/reading3.png',color:Color(getColorHexFromStr('#500041')),),
                            ),
                            Text(
                              'Learnings',
                              style: TextStyle(fontFamily: 'Quicksand',fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      )
                       )
                    ],
                  ),
                 
                ],
              ),
                  //================================= Row 2 ends here ======================
SizedBox(height: 10.0),
             Container(
          height: 140.0,
          child: 
          FutureBuilder(
          future: getOrder(),
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);

            return snapshot.hasData
                ? new ListView.builder(
                   scrollDirection: Axis.horizontal,
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return _buildFoodItem('${snapshot.data[index]['card_img']}');
                    },
                  )
                :  SizedBox(
  
  child: Shimmer.fromColors(
    baseColor: Color(0xfff0efea),
    highlightColor: Color(0xffcccccc),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
       
        Column(
          children: <Widget>[
            Container(
               width: 100,
          height: 90,
          color:Color(0xfff0efea),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
               width: 100,
          height:10,
          color:Color(0xfff0efea),
            ),
            
          ],
         
        ),
         
        Column(
          children: <Widget>[
            Container(
               width: 100,
          height: 90,
          color:Color(0xfff0efea),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
               width: 100,
          height:10,
          color:Color(0xfff0efea),
            ),
            
          ],
         
        ),

         
        Column(
          children: <Widget>[
            Container(
               width: 100,
          height: 90,
          color:Color(0xfff0efea),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
               width: 100,
          height:10,
          color:Color(0xfff0efea),
            ),
            
          ],
         
        )
      ],
    )
  ),
);
          },
        ),
          
        ),

         SizedBox(height: 10.0),
         Container(
           child:FutureBuilder(
          future: getmostSearched(),
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);

            return snapshot.hasData
                ? new ListView.builder(
                   shrinkWrap: true,
                     physics: ClampingScrollPhysics(),
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return itemCard('${snapshot.data[index]['title']}', '${snapshot.data[index]['desc']}','${snapshot.data[index]['parent_service_id']}','${snapshot.data[index]['child_service_id']}','${snapshot.data[index]['img_path']}');
                    },
                  )
                :  SizedBox(
  // width: 200.0,
  // height: 100.0,
  child: Shimmer.fromColors(
    baseColor: Color(0xfff0efea),
    highlightColor: Color(0xffcccccc),
    child: 
        Column(
          children: <Widget>[

              Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: 140.0,
              height: 80.0,
              decoration: BoxDecoration(
                color: Color(0xfff0efea),
                      ),
            ),
            SizedBox(width: 6.0),
            Column(
              children: <Widget>[
                
                Row( 
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                     Container(
               width:MediaQuery.of(context).size.width*.5,
               height:10,
               color:Color(0xfff0efea),
                 ),
                  ],
                ),
                SizedBox(height:12.0),
                Container(
               width:MediaQuery.of(context).size.width*.5,
               height:10,
               color:Color(0xfff0efea),
                 ),
                 SizedBox(height: 5.0),
                 Container(
               width:MediaQuery.of(context).size.width*.5,
               height:10,
               color:Color(0xfff0efea),
                 ),
                SizedBox(height: 5.0),
                
              ],
            )
          ],
        ),
        // ================== row 2=========
        SizedBox(height: 8.0),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: 140.0,
              height: 80.0,
              decoration: BoxDecoration(
                color: Color(0xfff0efea),
                      ),
            ),
            SizedBox(width: 6.0),
            Column(
              children: <Widget>[
                
                Row( 
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                     Container(
               width:MediaQuery.of(context).size.width*.5,
               height:10,
               color:Color(0xfff0efea),
                 ),
                  ],
                ),
                SizedBox(height:12.0),
                Container(
               width:MediaQuery.of(context).size.width*.5,
               height:10,
               color:Color(0xfff0efea),
                 ),
                 SizedBox(height: 5.0),
                 Container(
               width:MediaQuery.of(context).size.width*.5,
               height:10,
               color:Color(0xfff0efea),
                 ),
                SizedBox(height: 5.0),
                
              ],
            )
          ],
        ),
        //====================row 3=========
        SizedBox(height: 8.0),
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: 140.0,
              height: 80.0,
              decoration: BoxDecoration(
                color: Color(0xfff0efea),
                      ),
            ),
            SizedBox(width: 6.0),
            Column(
              children: <Widget>[
                
                Row( 
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                     Container(
               width:MediaQuery.of(context).size.width*.5,
               height:10,
               color:Color(0xfff0efea),
                 ),
                  ],
                ),
                SizedBox(height:12.0),
                Container(
               width:MediaQuery.of(context).size.width*.5,
               height:10,
               color:Color(0xfff0efea),
                 ),
                 SizedBox(height: 5.0),
                 Container(
               width:MediaQuery.of(context).size.width*.5,
               height:10,
               color:Color(0xfff0efea),
                 ),
                SizedBox(height: 5.0),
                
              ],
            )
          ],
        ),
        //=======================row ends here ===
            
          ],
         
        ),
        
  ),
);
          },
        ), 
         )
              
             
            ],
          )
        ],
      ),
      
      bottomNavigationBar: BottomNavigationBar(

         type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            
            icon: Icon(Icons.home,color:Color(getColorHexFromStr('#71b59d')) ,),
            title: Text("Home",style: TextStyle(color: Colors.black),),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text("My Booking"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            title: Text("Help Center"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
          ),
          //  BottomNavigationBarItem(
          //   icon: Icon(Icons.favorite),
          //   title: Text("Profile"),
          // ),
        ],
        // onTap: navigationTapped,
        // currentIndex: _page,
      ),
    );
  }


Widget _buildFoodItem(String imgPath) {
  
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 125.0,
            width: 200.0,
            // color:Color(0xfff0efea),
          ),
          Positioned(
            top: 7.0,
              child: Container(
              height: 110.0,
              width: 200.0,
              decoration: BoxDecoration(
                color:Color(0xfff0efea),
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                image:NetworkImage("${newApi.musurl}/uploads/images/ads/$imgPath")
                 )
              ),
            
              )
          ),
         
        ],
      ),
    );
  }
  

  Widget itemCard(String title, String desc, String parentServiceId, String childServiceId, String imgPath) {
    return Padding(
      padding: EdgeInsets.only(left: 1.0, right: 1.0, top: 15.0),
      child: Container(
        height: 110.0,
        width: double.infinity,
        color: Colors.white,
        child:Card(
          elevation:1.0,
          child: 
        
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              width: 140.0,
              height: 80.0,
              decoration: BoxDecoration(
                color: Color(0xfff0efea),
                  image: DecorationImage(
                    image:NetworkImage("${newApi.musurl}/uploads/images/most_searched/$imgPath")
                      ,fit: BoxFit.cover)
                      ),
            ),
            SizedBox(width: 6.0),
            Column(
              children: <Widget>[
                 SizedBox(height: 10.0,
                 ),
                Row( 
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                     Text(
                      title,
                      style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 13.0,
                          fontWeight: FontWeight.bold),
                    ),
                   
                   
                    
                  ],
                ),
                SizedBox(height: 5.0),
                Container(
                  width: 204.0,
                  child: Text(
                    '$desc',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        color: Colors.grey,
                        fontSize: 12.0),
                  ),
                ),
                SizedBox(height: 5.0),
                
              ],
            )
          ],
        ),
        )
      ),
    );
  }
}