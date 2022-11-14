import 'package:flutter/material.dart';
import 'package:xo_game/login.dart';

import 'homePage.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginScreen.RouteName,
      routes: {
        HomePage.RouteName:(c)=>HomePage(),
        LoginScreen.RouteName:(c)=>LoginScreen(),
      },
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),

    );
  }
}


