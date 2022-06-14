import 'package:flutter/material.dart';
import 'package:shopingapp/Screens/CourseDetail.dart';
import 'package:shopingapp/Screens/HomeScreen.dart';
import 'package:shopingapp/Screens/ProductDetalis.dart';
import 'package:shopingapp/Screens/ProductScreen.dart';
import 'package:shopingapp/Screens/SettingScreen.dart';
import 'package:shopingapp/Screens/WelcomeSreen.dart';

void main() => runApp(
      MyApp(),
    );

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              iconTheme: IconThemeData(color: Colors.black),
              titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
              backgroundColor: Colors.lightBlueAccent.shade400,
              centerTitle: true,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10),
              )))),
      initialRoute: '/HomeScreen',
      routes: {
        '/WelcomeScreen': (context) => WelcomeScreen(),
        '/ProductScreen': (context) => ProductScreen(),
        '/HomeScreen': (context) => HomeScreen(),
        '/SettingScreen': (context) => SettingScreen(),
        '/ProductDetales': (context) => ProductDetales(),
        '/CourseDetail': (context) => CourseDetail(),
      },
    );
  }
}
