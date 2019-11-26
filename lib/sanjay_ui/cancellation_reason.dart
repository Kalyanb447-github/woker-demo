import 'package:flutter/material.dart';

class CancellationReason extends StatefulWidget {
  @override
  _CancellationReasonState createState() => _CancellationReasonState();
}

class _CancellationReasonState extends State<CancellationReason> {
  
  _getLocation()async{

  }
  @override
  Widget build(BuildContext context) {
    bool groupValue = false;
      int _currValue = 1;
    Color myColor = Colors.blueAccent[400];
    openAlertBox() {
      return showDialog(
          // context: context,
          context: context,
          builder: (BuildContext context) {
            Widget radioList({String title}) => 
            Row(
                  children: <Widget>[
                    Radio(
                      activeColor: Colors.blue,
                      groupValue: groupValue,
                      value: true,
                      onChanged: (value) {},
                    ),
                    Text(title,style: TextStyle(
                      fontSize: 14,
                    ),
                    maxLines: 2,
               ),
                  ],
                );
            return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0))),
              contentPadding: EdgeInsets.only(top: 10.0),
              content: Container(
                width: 100.0,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:20.0),
                      child: Text('Cancellation Reason',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                    ),
                      SizedBox(
                      height: 20,
                    ),


                    
                    radioList(title: 'Place the request by mistake'),
                    radioList(title: 'Heard someone else outside Woker'),
                    radioList(title: 'Want this service at some \nother time'),
                    radioList(
                        title: 'Did not get the service provider\n details'),
                    radioList(title: 'Price is high'),
                    radioList(title: 'others'),
                    Divider(
                      height: 50,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        FlatButton(
                          onPressed: () {},
                          child: Text(
                            "DISSMISS",
                            style: TextStyle(color: Colors.grey),
                            textAlign: TextAlign.center,
                          ),
                        ),
                          FlatButton(
                          onPressed: () {},
                          child: Text(
                            "SUBMIT",
                            style: TextStyle(color: Colors.blue),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            );
          });
    }

    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () {
            openAlertBox();
          },
          child: Text('cancel dialog'),
        ),
      ),
    );
  }
}
