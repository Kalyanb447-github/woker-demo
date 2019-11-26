import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:woker/splash_screen.dart';
import 'package:woker/test.dart';
import 'about_us.dart';
import 'account.dart';
import 'book_now.dart';
import 'chat_page.dart';
import 'contact_us.dart';
import 'forget_password.dart';
import 'home.dart';
import 'index_page.dart';
import 'job_details_page.dart';
import 'login_page.dart';
import 'notification_page.dart';
import 'request_page.dart';
import 'select_location_option.dart';
import 'service_page.dart';
import 'signup_page.dart';
import 'location/location.dart';
import 'worker_details.dart';
import 'worker_list.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    Test.tag: (context) => Test(),
    Test2.tag: (context) => Test2(),
    Test3.tag: (context) => Test3(),
    Test4.tag: (context) => Test3(),

    SplashScreen.tag: (context) => SplashScreen(),
    'location': (BuildContext context) => location(),
    WorkerList.tag: (context) => WorkerList(),

    WorkerDetails.tag: (context) => WorkerDetails(),

    // Test.tag: (context) => Test(),
    LoginPage.tag: (context) => LoginPage(),
    SignUpPage.tag: (context) => SignUpPage(),
    ForgetPassword.tag: (context) => ForgetPassword(),
    IndexPage.tag: (context) => IndexPage(),
    SelectLocationOption.tag: (context) => SelectLocationOption(),
    'home-page': (BuildContext context) => Home(),
    ServicePage.tag: (context) => ServicePage(),
    Request.tag: (context) => Request(),
    BookNow.tag: (context) => BookNow(),
    Chat.tag: (context) => Chat(),
    NotificationPage.tag: (context) => NotificationPage(),
    JobDetailsPage.tag: (context) => JobDetailsPage(),
    Account.tag: (context) => Account(),
    ContactUs.tag: (context) => ContactUs(),
    AboutUs.tag: (context) => AboutUs(),

    // HomePage.tag: (context) => HomePage(),
    // Services.tag: (context) => Services(),

    // CostomerDetails.tag: (context) => CostomerDetails(),
    // ProductDetails.tag: (context) => ProductDetails(),
    // BackOfficeWork.tag: (context) => BackOfficeWork(),
    // PendingService.tag: (context) => PendingService(),

    // CreateServiceFullDetails.tag: (context) => CreateServiceFullDetails(),

    // ServicesList.tag: (context) => ServicesList(),
    // AmcSchedule.tag: (context) => AmcSchedule(),

    //       routes: <String,WidgetBuilder>{
    //   '/AdminPage': (BuildContext context)=> new AdminPage(username: username,),
    //   '/MemberPage': (BuildContext context)=> new MemberPage(username: username,),
    //   '/MyHomePage': (BuildContext context)=> new MyHomePage(),
    // },
  };

  @override
  Widget build(BuildContext context) {
//     MediaQueryData queryData;
// queryData = MediaQuery.of(context);
    // SystemChrome.setPreferredOrientations(
    //     [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

// to hide only bottom bar:
// SystemChrome.setEnabledSystemUIOverlays ([SystemUiOverlay.top]);

// to hide only status bar:
    SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);

// to hide both:
// SystemChrome.setEnabledSystemUIOverlays ([]);
    return MaterialApp(
      title: 'Woker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: Colors.blueAccent[400],
        // accentColor: Colors.white,

        fontFamily: 'Nunito',
      ),
      home: SharedPreferenceTest(),
      routes: routes,
    );
  }
}


