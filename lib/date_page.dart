import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePage extends StatefulWidget {
  DatePage(this.title);
  String title;
  @override
  _DatePageState createState() => _DatePageState();
}

class _DatePageState extends State<DatePage> {
 // List<String> dayOfWeek = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
  String dayName=DateFormat('EEE').format(DateTime.now());
    String dateOfMOnth=DateFormat('d').format(DateTime.now());

  //pick the date
  DateTime selectedDate = DateTime.now();
  Future<Null> _selectDate(BuildContext context) async {
    final DateTime datePicked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    //       firstDate: DateTime.now(),
    // initialDate: DateTime.now().subtract(Duration(days: 30)),
    // lastDate: DateTime.now().add(Duration(days: 60)));
    if (datePicked != null && datePicked != selectedDate)
      setState(() {
        selectedDate = datePicked;
        dateOfMOnth=datePicked.toString();
          dayName=datePicked.toString();
        print(datePicked);
      });
  }

  //pick the time
  TimeOfDay time = TimeOfDay.now();
  Future<Null> _timePicker(BuildContext context) async {
    final TimeOfDay timePicked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (timePicked != null && timePicked != selectedDate) {
      setState(() {
        time = timePicked;
        print(timePicked);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget selectDateButton(int position) => Container(
      margin: EdgeInsets.only(left: 15),
      decoration: BoxDecoration(
        border: Border.all(width: .5, color: Colors.blue),
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      height: 80,
      width: 80,
      child: FlatButton(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text(
              dayName,
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700),
            ),
            Text(
              dateOfMOnth
              ,
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700),
            ),

          ],
        ),
        onPressed: () {
        //   _selectDate(context);
        },
      ),
    );
    Widget selectTime(String timingText) => Container(
      height: 60,
      width: 150,
      margin: EdgeInsets.only(left: 20),
      decoration: BoxDecoration(
        border: Border.all(width: .5, color: Colors.blue),
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: FlatButton(
        onPressed: () {
          //_timePicker(context);
        },
        child: Text(
          timingText,
          style: TextStyle(
              color: Colors.black45,
              fontSize: 18.0,
              fontWeight: FontWeight.w700),
        ),
      ),
    );
    var buttomButton = Container(
   
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 60,
      child: RaisedButton(
          color: Colors.grey[300],
          elevation: 4,
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Next',
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
              SizedBox(width: 10,),
              Icon(Icons.arrow_forward)
            ],
          )),
    );
    var datePicker = Container(
          margin: EdgeInsets.only(left: 15),
          decoration: BoxDecoration(
            border: Border.all(width: .5, color: Colors.blue),
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
          height: 80,
          width: 80,
          child: FlatButton(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text(
                  'Select',
                  style: TextStyle(
                      color: Colors.blue,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700),
                ),
               Icon(Icons.date_range,size: 30,color: Colors.pinkAccent[400],)
                
              ],
            ),
            onPressed: () {
              _selectDate(context);
            },
          ),
        );
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              onPressed: () => Navigator.pop(context, false),
              icon: Icon(Icons.arrow_back, color: Colors.black),
            ),
            title: Text(
              'Bathroom Deep Cleaning',
              style: TextStyle(color: Colors.black),
            ),
          ),
          body: ListView(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
    
              //timing text
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                height: 100,
                child: Text(
                  'When would you like your\n Service ?',
                  style: TextStyle(
                      color: Colors.black45,
                      fontSize: 25.0,
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
              ),
    
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  selectDateButton(0),
                  selectDateButton(1),
                  datePicker,
            ],
          ),

          SizedBox(
            height: 50,
          ),
          //
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            height: 100,
            child: Text(
              'At What time should the \n professional arrive ?',
              style: TextStyle(
                  color: Colors.black45,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w700),
              textAlign: TextAlign.center,
            ),
          ),

          Row(
            children: <Widget>[
              selectTime('9 - 9:30 am'),
              selectTime('9:30 - 10 am'),
            ],
          ),
            SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              selectTime('10 - 10:30 am'),
              selectTime('10:30 - 11 am'),
            ],
          ),
        ],
      ),
      bottomNavigationBar: buttomButton,
    );
  }
}
