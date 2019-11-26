import "package:flutter/material.dart";
import 'dart:async';

class BookNow extends StatefulWidget {
  static String tag = 'Book-now-page';

  @override
  _BookNowState createState() => _BookNowState();
}

class _BookNowState extends State<BookNow> {
  List<String> dayOfWeek = ['Sun' 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];

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
    final profileDic = Container(
      decoration: BoxDecoration(
          color: Colors.blueAccent[400],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(60),
            bottomRight: Radius.circular(60),
          )),
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
                padding: EdgeInsets.only(top: 15),
              ),
              Text(
                'John doe ',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15),
              ),
              Text(
                'Plumbing ',
                style: TextStyle(
                    color: Colors.white54,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
    //date portion
    final date = Container(
      margin: EdgeInsets.only(
        top: 10,
        left: 10,
        right: 10,
      ),
      decoration: BoxDecoration(
          color: Colors.blueAccent[400],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )
          ),
      height: 100,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 25,
            left: 120,
            height: 80,
            child: Column(
              children: <Widget>[
                RaisedButton(
                  elevation: 20,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      //  Icon(
                      //   Icons.calendar_today,
                      //   color:Colors.blueAccent[400],
                      //   size: 20,
                      // ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Choose your date',
                        style: TextStyle(
                            color: Colors.blueAccent[400],
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                  onPressed: () {
                    _selectDate(context);
                  },
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.blueAccent[400],
              borderRadius: BorderRadius.circular(15),
            ),
            margin: EdgeInsets.only(left: 5, right: 5, top: 10),
            //  color: Colors.red,
            height: 80,
            width: 60,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 5),
                ),
                Text(
                  'Mon',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                ),
                Container(
                  height: 50,
                  width: 50,
                  child: Card(
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        '${selectedDate.day}',
                        style: TextStyle(
                            color: Colors.blueAccent[400],
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

    final when = Container(
      margin: EdgeInsets.only(
        top: 10,
        left: 10,
        right: 10,
      ),
      decoration: BoxDecoration(
          color: Colors.blueAccent[400],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      height: 100,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 25,
            left: 120,
            height: 80,
            child: Column(
              children: <Widget>[
                RaisedButton(
                  elevation: 20,
                  color: Colors.white,
                  child: Row(
                    children: <Widget>[
                      //  Icon(
                      //   Icons.access_time,
                      //   color:Colors.blueAccent[400],
                      //   size: 20,
                      // ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Choose your Time',
                        style: TextStyle(
                            color: Colors.blueAccent[400],
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                  onPressed: () {
                    _timePicker(context);
                  },
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.blueAccent[400],
              borderRadius: BorderRadius.circular(15),
            ),
            margin: EdgeInsets.only(left: 5, right: 5, top: 10),
            //  color: Colors.red,
            height: 80,
            width: 100,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 5),
                ),
                Text(
                  'Time',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                ),
                Container(
                  height: 50,
                  width: 100,
                  child: Card(
                    color: Colors.white,
                    child: Center(
                      child: Text(
                        '${time.format(context)}',
                        style: TextStyle(
                            color: Colors.blueAccent[400],
                            fontWeight: FontWeight.bold,
                            fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
    final address = Container(
      margin: EdgeInsets.only(
        top: 10,
        left: 10,
        right: 10,
      ),
      decoration: BoxDecoration(
          color: Colors.blueAccent[400],
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          )),
      height: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              'Select your Address',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          //locality
          Container(
            height: 40,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            margin: EdgeInsets.only(left: 20),
            child: Center(
              child: TextField(
                  enableInteractiveSelection: false,
                  maxLines: 1,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    focusedBorder: InputBorder.none,
                    contentPadding: EdgeInsets.only(left: 10),
                    enabledBorder: InputBorder.none,
                    disabledBorder: InputBorder.none,

                    hintText: 'Locality',
                    // border: OutlineInputBorder(
                    //     borderSide:
                    //         BorderSide( color: Colors.red),
                    //     borderRadius: BorderRadius.circular(10.0)
                    //     ),
                  )),
            ),
          ),
          //
          Padding(padding: EdgeInsets.only(top: 10)),

          Row(
            children: <Widget>[
              //city
              Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                margin: EdgeInsets.only(left: 20),
                child: Center(
                  child: TextField(
                      enableInteractiveSelection: false,
                      maxLines: 1,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 10),
                        enabledBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: 'City',
                      )),
                ),
              ),
              //District
              Container(
                height: 40,
                width: 140,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                margin: EdgeInsets.only(left: 10),
                child: Center(
                  child: TextField(
                      enableInteractiveSelection: false,
                      maxLines: 1,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 10),
                        enabledBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: 'District',
                      )),
                ),
              ),
              //
            ],
          ),
          Padding(padding: EdgeInsets.only(top: 10)),
          //
          Row(
            children: <Widget>[
              //pin
              Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                margin: EdgeInsets.only(left: 20),
                child: Center(
                  child: TextField(
                      enableInteractiveSelection: false,
                      maxLines: 1,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 10),
                        enabledBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: 'pin',
                      )),
                ),
              ),
              //State
              Container(
                height: 40,
                width: 140,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                margin: EdgeInsets.only(left: 10),
                child: Center(
                  child: TextField(
                      enableInteractiveSelection: false,
                      maxLines: 1,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        focusedBorder: InputBorder.none,
                        contentPadding: EdgeInsets.only(left: 10),
                        enabledBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        hintText: 'State',
                      )),
                ),
              ),
              //
              //
            ],
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        //  backgroundColor: Colors.blueAccent[400],
        backgroundColor: Colors.blueAccent[400],

        leading: IconButton(
          onPressed: () => Navigator.pop(context, false),
          // onPressed: (){
          //   Navigator.of(context).pop();
          // },
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            // onPressed: () => Navigator.pop(context, false),
            // onPressed: (){
            //   Navigator.of(context).pop();
            // },
            onPressed: (){},
            icon: Icon(Icons.done, color: Colors.white),
          ),
        ],
      ),
      body: ListView(
        children: <Widget>[
          profileDic,
          date,
          when,
          address,
        ],
      ),
    );
  }
}

class DatePicker extends StatefulWidget {
  @override
  _DatePickerState createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  DateTime selectedDate = DateTime.now();
  Future<Null> _selectDate(BuildContext context) async {
    final DateTime datePicked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (datePicked != null && datePicked != selectedDate)
      setState(() {
        selectedDate = datePicked;
        print(datePicked);
      });
  }

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
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            Text(
                'date: ${selectedDate.day}/${selectedDate.month}/${selectedDate.year}'),
            Text('date: ${time.format(context)}'),
            RaisedButton(
              child: Text('Date'),
              onPressed: () {
                _selectDate(context);
              },
            ),
            RaisedButton(
              child: Text('time'),
              onPressed: () {
                _timePicker(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
