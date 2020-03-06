import 'package:contador/src/pages/counter_page.dart';
import 'package:contador/src/pages/home_page.dart';
import 'package:flutter/material.dart';


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: 
      Center(child: CounterPage()),
      );
  }
}
