import 'package:flutter/material.dart';
import 'package:layout/profile_screen.dart';

import 'e_commerce_screen.dart';
import 'flex_screen.dart';

void main() {
  runApp(StaticApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FlexScreen(),
    );
  }
}

class StaticApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.green,
        appBarTheme: AppBarTheme(
          elevation: 10,
          titleTextStyle: TextStyle(
            fontFamily: 'LeckerliOne',
            fontSize: 24,
          ),
        ),
      ),
      home: ECommerceScreen(),
    );
  }
}
