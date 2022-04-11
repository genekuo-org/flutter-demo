import 'package:flutter/material.dart';

import 'basic_screen.dart';

void main() => runApp(StaticApp());

class StaticApp extends StatelessWidget {
  const StaticApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BasicScreen(),
    );
  }
}
