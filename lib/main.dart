import 'package:flutter/material.dart';
import 'package:task1/page/forminput.dart';
import 'package:task1/page/home.dart';
import 'package:task1/page/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final router = <String, WidgetBuilder>{
    Login.routename:(_) => Login(),
    Home.routename:(_) => Home(),
    Forminput.routename:(_) => Forminput()
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      
      debugShowCheckedModeBanner: false,
      routes: router,
      initialRoute: Login.routename,
    );
  }
}
