import 'package:calculator/Screens/CalcPage.dart';
import 'package:calculator/Screens/HistoryPage.dart';
import 'package:calculator/Screens/LoginPage.dart';
import 'package:calculator/Screens/ProfilePage.dart';
import 'package:calculator/Screens/RegisterPage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Src/Functions.dart';

void main() {
  return runApp(MultiProvider(
    providers: [
    ChangeNotifierProvider<SomeFunctions>(create: (BuildContext context)=>SomeFunctions()),
    ],
    child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: RegisterPage.route,
      routes: {
        LoginPage.route: (context)=>LoginPage(),
        RegisterPage.route: (context)=>RegisterPage(),
        ProfilePage.route: (context)=>ProfilePage(),
        HistoryPage.route: (context)=>HistoryPage(),
        CalcApp.route: (context)=>CalcApp(),
      },
    );
  }
}