import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:woker/sanjay_ui/date_page.dart';
import 'package:woker/sanjay_ui/summary_page.dart';



class YourLocationPage extends StatefulWidget {
  YourLocationPage({this.title});
  String title;
  @override
  _YourLocationPageState createState() => _YourLocationPageState();
}

class _YourLocationPageState extends State<YourLocationPage> {
  String select = 'Mr';
  List<String> frouts = ['Mr', 'Mrs', 'Miss'];
  List<DropdownMenuItem> getDropdownItems() {
    List<DropdownMenuItem<String>> dropDownItems = [];

    for (int i = 0; i < frouts.length; i++) {
      String frout = frouts[i];
      //print(frout);

      var newItem = DropdownMenuItem(
        child: Text(frout),
        value: frout,
      );
      dropDownItems.add(newItem);
    }

    return dropDownItems;
  }

  Color addressColor = Colors.blue;
  bool tap = false;

  //var location = new Location();
  @override
  Widget build(BuildContext context) {
    var buttomButton = Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      height: 60,
      child: RaisedButton(
          color: Colors.black,
          elevation: 4,
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DatePage(title: widget.title,),
                ));
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 20,
              ),
              Text(
                'Add Flat / Building / Street',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700),
                //  textAlign: TextAlign.center,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(Icons.arrow_forward)
            ],
          )),
    );
    var yourLocationField = Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextFormField(
        initialValue: 'Siliguri ,West Bengal, India',
        decoration: new InputDecoration(
          suffix: InkWell(
            onTap: () {},
            child: Text(
              'Change',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          labelText: "Your Location",
          fillColor: Colors.white,

          //fillColor: Colors.green
        ),
        validator: (val) {
          if (val.length == 0) {
            return "Email cannot be empty";
          } else {
            return null;
          }
        },
        keyboardType: TextInputType.emailAddress,
        style: new TextStyle(
          fontFamily: "Poppins",
        ),
      ),
    );
    var yourFlatTextfield = Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextFormField(
        decoration: new InputDecoration(
          labelText: "Flat / Building / Street",
          hintText: '',

          fillColor: Colors.white,

          //fillColor: Colors.green
        ),
        validator: (val) {
          if (val.length == 0) {
            return "Email cannot be empty";
          } else {
            return null;
          }
        },
        keyboardType: TextInputType.emailAddress,
        style: new TextStyle(
          fontFamily: "Poppins",
        ),
      ),
    );
    var nameTextField = Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            height: 50,
            child: DropdownButton<String>(
              value: select,
              items: getDropdownItems(),
              onChanged: (value) {
                setState(() {
                  select = value;
                  getDropdownItems();
                });
              },
            ),
          ),
          //
          Container(
            padding: EdgeInsets.only(left: 20),
            width: MediaQuery.of(context).size.width * .7,
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Name',
                hintText: 'your name',
              ),
            ),
          ),
        ],
      ),
    );
    Widget addressTypeChips({String addressType, int id}) => InkWell(
          onTap: () {
            //  print('object');

            setState(() {
              tap = true;

              addressColor = Colors.blue;

              if (id == 1) {}
            });
          },
          child: Chip(
            padding: EdgeInsets.all(10),
            backgroundColor: tap == false ? Colors.grey : addressColor,
            label: Text(addressType),
            labelStyle: TextStyle(color: Colors.white),
            elevation: 2,
          ),
        );
    return Scaffold(
      //resizeToAvoidBottomPadding: false,
      //  resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.pop(context, false),
          icon: Icon(Icons.arrow_back, color: Colors.black),
        ),
        title: Text(
          widget.title,
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Stack(
        children: <Widget>[
          //gps portion
          Container(
            height: MediaQuery.of(context).size.height * .3,
            //   color: Colors.red,
            decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,

                  image: NetworkImage(

                      // 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTV3jFrTaruAkgnnuAfxvfp7hjgYMBB0kfuyFqZ_YeagovqL_tW'
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQlZcLrqP3Iao2wDxE9X48q8ro5MAc3_LK4pRRWEslyfjd3pjiqQ',

                      ),
                ),
                ),
          ),

          //
          // Positioned(
          //   top: MediaQuery.of(context).size.height * .15,
          //   right: MediaQuery.of(context).size.width * .1,
          //   child: Container(
          //     decoration: BoxDecoration(
          //       color: Colors.white,
          //       shape: BoxShape.circle,
          //     ),
          //     child: IconButton(
          //       onPressed: () {
          //         print('object');
          //       },
          //       icon: Icon(
          //         Icons.gps_fixed,
          //         color: Colors.blue,
          //         size: 25,
          //       ),
          //     ),
          //   ),
          // ),

          Container(
            margin: EdgeInsets.only(top: 160),
            height: MediaQuery.of(context).size.height * .57,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                )),
            child: ListView(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,

              // mainAxisSize: MainAxisSize.min,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                yourLocationField,
                yourFlatTextfield,
                nameTextField,
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Text(
                    'Save As',
                    style: TextStyle(color: Colors.grey[700], fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: <Widget>[
                      // Container(
                      //   margin: EdgeInsets.all(10),
                      //   height: 40,
                      //   decoration: BoxDecoration(
                      //       color: Colors.red,
                      //       borderRadius: BorderRadius.circular(60)),
                      //   child: FlatButton(
                      //     onPressed: () {
                      //       print('object');
                      //     },
                      //     child: Text('data'),
                      //   ),
                      // ),

                      addressTypeChips(addressType: 'HOME', id: 1),
                      SizedBox(
                        width: 10,
                      ),
                      addressTypeChips(addressType: 'OFFICE', id: 2),
                      SizedBox(
                        width: 10,
                      ),
                      addressTypeChips(addressType: 'OTHERS', id: 3),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: buttomButton,
    );
  }
}
