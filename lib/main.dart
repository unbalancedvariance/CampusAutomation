import 'package:campus_automation/fooditems.dart';
import 'package:campus_automation/form2.dart';
import 'package:flutter/material.dart';
import 'form.dart';
import 'login_page.dart';
import 'home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    LoginPage.tag: (context) => const LoginPage(),
    HomePage.tag: (context) => const HomePage(),
    SignUpPage.tag: (context) => SignUpPage(),
    laundry.tag: (context) => laundry(),
    Fooditem.tag: (context) => Fooditem(),
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
      home: const LoginPage(),
      routes: routes,
    );
  }
}
