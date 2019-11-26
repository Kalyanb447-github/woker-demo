// import 'package:flutter/material.dart';
// import 'package:woker/sanjai_ui/i_want_the_service_on_other_time.dart';
// import 'package:woker/sanjai_ui/my_booking_has_been_cancelled.dart';
// import 'package:woker/sanjai_ui/need_help_with_other_issue.dart';
// import 'package:woker/sanjai_ui/professional_denied%20_to_deliver_the_service.dart';

// class GetHelpWithThisBooking extends StatefulWidget {
//   @override
//   _GetHelpWithThisBookingState createState() => _GetHelpWithThisBookingState();
// }

// class _GetHelpWithThisBookingState extends State<GetHelpWithThisBooking> {
//   static String tag = 'get-help-with-this-booking';
//   List<String> title = [
//     'Professional denied to deliver the service',
//     'My service booking has been cancelled but time',
//     'I want the service booking for sone other time ',
//     'Need help with other issue'
//   ];
//   @override
//   Widget build(BuildContext context) {
//     final appBar = AppBar(
//       backgroundColor: Colors.blueAccent[400],
//       leading: IconButton(
//         icon: Icon(
//           Icons.arrow_back,
//           color: Colors.white,
//         ),
//         onPressed: () {
//           Navigator.of(context).pop();
//         },
//       ),
//       title: Text(
//         'Get help with this',
//         style: TextStyle(color: Colors.white),
//       ),
//       // actions: <Widget>[
//       //   IconButton(
//       //     // onPressed: () => Navigator.pop(context, false),
//       //     // onPressed: (){
//       //     //   Navigator.of(context).pop();
//       //     // },
//       //     icon: Icon(Icons.search, color: Colors.white),
//       //   ),
//       // ],
//       elevation: 10,
//     );

//     Widget listile({@required String title, @required Function onPressed}) =>
//         Container(
//             height: 60,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(130),
//             ),
//             // height: 10,
//             child: Card(
//                 borderOnForeground: true,
//                 semanticContainer: true,
//                 clipBehavior: Clip.antiAlias,
//                 margin: EdgeInsets.only(top: .4),
//                 elevation: 2,
//                 child: ListTile(
//                   onTap: onPressed,
//                   title: Text(
//                     title,
//                     style: TextStyle(
//                         color: Colors.blueGrey,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16),
//                   ),
//                   trailing: Icon(
//                     Icons.arrow_forward_ios,
//                     color: Colors.grey[300],
//                     size: 15,
//                   ),
//                 )));

//     return Scaffold(
//         backgroundColor: Colors.grey[50],
//         appBar: appBar,
//         body: Container(
//           child: ListView(
//             children: <Widget>[
//               SizedBox(height: 30.0),
//               listile(
//                   title: title[0],
//                   onPressed: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => ProfessialDeniedToDelver(
//                             title: title[0],
//                           ),
//                         ));
//                   }),
//               SizedBox(height: 1.0),
//               listile(
//                   title: title[1],
//                   onPressed: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => MyBookingHAsBEenCancelled(
//                             title: title[1],
//                           ),
//                         ));
//                   }),
//               SizedBox(height: 1.0),
//               listile(
//                   title: title[2],
//                   onPressed: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => IWantTheSheServiceOnOtherTime(
//                             title: title[2],
//                           ),
//                         ));
//                   }),
//               SizedBox(height: 1.0),
//               listile(
//                   title: title[3],
//                   onPressed: () {
//                     Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => NeedHelpWithOtherIssue(
//                             title: title[3],
//                           ),
//                         ));
//                   }),
//             ],
//           ),
//         ));
//   }
// }
