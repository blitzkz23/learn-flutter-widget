import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan container"),
        ),
        body: Container(
          color: Colors.red,
          margin: EdgeInsets.all(20),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[Colors.amberAccent, Colors.red, Colors.green],
              ),
              borderRadius: BorderRadius.circular(20),
            ),
            margin: EdgeInsets.only(top: 40, bottom: 30),
          ),
        ),
      ),
    );
  }
}
