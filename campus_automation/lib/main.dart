import 'package:flutter/material.dart';
import 'building.dart';
import 'form.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'active_requests.dart';
import 'form2.dart';
void main() => runApp(MyApp());


class User{
  late String rollnumber;
  late String name;
  late String roomnumber;
  User(this.rollnumber,this.name, this.roomnumber);
}

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => const LoginPage(),
    HomePage.tag: (context) => HomePage(),
    SignUpPage.tag: (context) => SignUpPage(),
    Active_Requests.tag:(context) => Active_Requests(),
    laundry.tag:(context) => laundry(),
    Building.tag: (context) => Building(),
  };

   MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kodeversitas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        fontFamily: 'Nunito',
      ),
      home: LoginPage(),
      routes: routes,
    );
  }
}
