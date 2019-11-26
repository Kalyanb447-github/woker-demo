import "package:flutter/material.dart";

class JobDetailsPage extends StatefulWidget {
  static String tag = 'job-details-page';

JobDetailsPage({this.title});
 final String title;
  @override
  _JobDetailsPageState createState() => _JobDetailsPageState();
}

class _JobDetailsPageState extends State<JobDetailsPage> {
  int _currentStep=0;

  @override
  Widget build(BuildContext context) {
    // var width=MediaQuery.of(context).size.width;
    // var heignt=MediaQuery.of(context).size.height;

//     MediaQueryData queryData;
// queryData = MediaQuery.of(context);

  List<Step> _mySteps(){
    List<Step> _steps=[
          Step(
             title: Icon(Icons.directions_run,color: Colors.green,),
              content: Container(
                height: 80,
                width: MediaQuery.of(context).size.width * .7,
                child: Card(
                  child: ListTile(
                    
                    title:   Text('Booking Pendung', style: TextStyle(color: Colors.blueGrey,fontSize: 20,fontWeight: FontWeight.bold),),
                    subtitle: Text('Booking Request Send on 12th jan 12.10', style: TextStyle(color: Colors.grey,fontSize: 10),), 
                  ),
                )
              ),
             isActive: _currentStep>=0,
            
          ),
          // Step(

          //    title: Text('Step1'),
          //     content: Text('data1'),
          //    isActive: _currentStep>=1,
            
          // ),
           
    ];
    return _steps;
  }
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
        'Job Details',
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
                'John doe ',
                style: TextStyle(
                    color: Colors.blueAccent[400],
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              // Padding(
              //   padding: EdgeInsets.only(top: 15),
              // ),
              // Text(
              //   'Plumbing ',
              //   style: TextStyle(
              //       color: Colors.blue,
              //       fontWeight: FontWeight.bold,
              //       fontSize: 16),
              // ),
            ],
          ),
          Container(
            margin:
                EdgeInsets.only(left: MediaQuery.of(context).size.width * .3),
            height: 50,
            width: 50,
            child: Icon(
              Icons.message,
              color: Colors.blueAccent[400],
            ),
          )
        ],
      ),
    );

 final jobType=Container(
            height: 60,

            margin: EdgeInsets.only(left: 100),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Text(
                'Job Type',
                style: TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
              SizedBox(height: 10,),
               Text(
                'Tap, Wash Basin and Sink Problem',
                style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
                    maxLines: 2,
              ),
            ],)
 );
 
   final jobRate=Container(
            height: 60,

            margin: EdgeInsets.only(left: 100),
          child: Row(children: <Widget>[
             Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

          Text(
                'Booked for',
                style: TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
              SizedBox(height: 10,),
               Text(
                '20th Jan,9:00',
                style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
                    maxLines: 2,
              ),
            ],
            ),
            Padding(padding: EdgeInsets.only(left: 30),),
             Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Text(
                'Rate',
                style: TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
              SizedBox(height: 10,),
               Text(
                '\u20B9 250/ per hour',
                style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
                    maxLines: 2,
              ),
            ],
            ),
          ],)
 );
  final address=Container(
            height: 80,

            margin: EdgeInsets.only(left: 100),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Text(
                'Address',
                style: TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.bold,
                    fontSize: 12),
              ),
              SizedBox(height: 10,),
               Text(
                'Siliguri,kawakhalki,medical,sushruta angar,darjeeling,734012,sanjai greel bidhB Pally ',
                style: TextStyle(
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold,
                    fontSize: 14),
                    maxLines: 4,
                    overflow: TextOverflow.clip,
              ),
            ],)
 );
  final twoButton=Container(
       

          child: Row(children: <Widget>[
           
             
          SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width*.5,
                child: RaisedButton(
                  elevation: 10,
                  onPressed: (){},
                  color: Colors.redAccent[200],
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.cancel,color: Colors.white,),
                        SizedBox(width: 8.0),
                       Text(
                'Reject Job',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                
                    overflow: TextOverflow.clip,
              ),
                    ],
                  ),
                ),
             ),

              SizedBox(
            height: 50,
            width: MediaQuery.of(context).size.width*.5,
                child: RaisedButton(
                  elevation: 10,
                  onPressed: (){},
                  color: Colors.blueAccent[400],
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.done,color: Colors.white,),
                        SizedBox(width: 8.0),
                       Text(
                'Accept Job',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                
                    overflow: TextOverflow.clip,
              ),
                    ],
                  ),
                ),
             ),
           
          ],)
 );
 final jobStatus=ListTile(
             title:      Text(
                'Job Status',
                style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
                
                    overflow: TextOverflow.clip,
              ),
 );

 final stepper=Stepper(
   currentStep: this._currentStep,
   steps: _mySteps(),
   onStepTapped: (step){
      setState(() {

       this._currentStep=step; 
      });
   },
 );
 
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
              jobType,
        
              jobRate,
              address,
               SizedBox(height: 8.0),
              twoButton,
              SizedBox(height: 20.0),
              jobStatus,
               SizedBox(height: 20.0),

              stepper,

              
            ],
          ),
        ));
  }
  
}
