import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:woker/sanjay_ui/your_location.dart';

class SummaryPage extends StatefulWidget {
  static String tag = 'bathroom-deep';
   SummaryPage({this.title});
  String title;

  @override
  _SummaryPageState createState() => _SummaryPageState();
}

class _SummaryPageState extends State<SummaryPage> {

  bool selected=false;
  String packageName;
  String subcontent;
  String rate;

selectedPackage(){

if(selected==true)
{
 return ListTile(
   
                    title: Text(
                      '$packageName',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.left,
                    ),
                    subtitle:
                     Text(
                      '$subcontent',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700),
                      maxLines: 1,
                    ),
                    trailing: Text(
                      'Rs. $rate',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.left,
                    ),
                  );
}else{
  return Container();
}
}


 proceed(){
   if(selected==false){
   showDialog(
          context: context,
          builder: (BuildContext context) {
            // return object of type Dialog
            return AlertDialog(
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20.0),
              ),
              title: new Text(
                "Alert",
                style: TextStyle(
                    color: Colors.blueAccent, fontWeight: FontWeight.w600),
              ),
              content: new Text(
                "Please Select Packege first !",
              ),
              actions: <Widget>[
                // usually buttons at the bottom of the dialog

                new FlatButton(
                  child: new Text(
                    "Cancel",
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.w600),
                  ),
                  onPressed: () async {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
   }else{
     Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => YourLocationPage(title: widget.title,),
                )
                );
   }
 }



  @override
  Widget build(BuildContext context) {
    var basicContainer = Container(
                height: 100,
                child: Card(
                  child: ListTile(
                    onTap: (){
                      setState(() {
                        packageName="Silver Package";
                        subcontent="1 Bathroom + 1 Fan";
                        rate="419";
                        selected=true;
                      });
                    },
                    title: Text(
                      'Silver Package',
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.left,
                    ),
                    subtitle:
                     Text(
                      '1 Bathroom + 1 Fan',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w700),
                      maxLines: 1,
                    ),
                    trailing: Text(
                      'Rs. 419',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25.0,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              );
        var appBar2 = AppBar(
                    backgroundColor: Colors.white,
                    leading: IconButton(
                      onPressed: () => Navigator.pop(context, false),
                      icon: Icon(Icons.arrow_back, color: Colors.black),
                    ),
                    title: Text(
                      widget.title,
                      style: TextStyle(color: Colors.black),
                    ),
                  );
                return Scaffold(
                  appBar: appBar2,
          body: ListView(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              //summery text
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                decoration:
                    BoxDecoration(border: Border(bottom: BorderSide(width: .2))),
                height: 50,
                child: Text(
                  'Packages',
                  style: TextStyle(
                      color: Colors.black38,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.left,
                ),
              ),
    
              //no fo bathrooms
    
              basicContainer,
               basicContainer,
                basicContainer,

          //

  
  

      

        SizedBox(height: 60,),
                // button 
          
        ],
      ),

       bottomNavigationBar: Container(
        color: Color(0xfff2f1f1),
        padding: EdgeInsets.all(10.0),
        child:Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
      
               selectedPackage(),
              
        
         RaisedButton(
              color: Colors.black,
              onPressed: (){
                proceed();
              },
              child:Container(
                padding: const EdgeInsets.all(10.0),
                child: 
              
              Row(
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
                      ),
                      ) 
            ),
               ],
        )
      ),

    );
  }
}
