import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Latihan flexible widget"),),
        body: Column(
          children: [
            Flexible(
              flex: 1,
              child: Row(
                children: [
                  Flexible(
                      child: Container(
                    color: Colors.red,
                  )),
                  Flexible(
                      child: Container(
                    color: Colors.yellow,
                  )),
                  Flexible(
                      child: Container(
                    color: Colors.green,
                  )),
                ],
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                color: Colors.purple,
                margin: EdgeInsets.all(20),
              ),
            ),
            Flexible(
              flex: 1,
              child: Container(
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
