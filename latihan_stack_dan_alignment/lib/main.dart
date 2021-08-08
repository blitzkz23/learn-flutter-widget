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
        appBar: AppBar(
          title: Text("Latihan Stack dan Alignment"),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                        ),
                      ),
                    ],
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.black12,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            ListView(
              children: [
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    "Ini adalah teks yang di tengah stack",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    "Ini adalah teks yang di tengah stack",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    "Ini adalah teks yang di tengah stack",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    "Ini adalah teks yang di tengah stack",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    "Ini adalah teks yang di tengah stack",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    "Ini adalah teks yang di tengah stack",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    "Ini adalah teks yang di tengah stack",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    "Ini adalah teks yang di tengah stack",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    "Ini adalah teks yang di tengah stack",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  child: Text(
                    "Ini adalah teks yang di tengah stack",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ],
            ),
            Align(
              alignment: Alignment(0.9, 0.75),
              child: ElevatedButton(
                child: Text("Button Outer Layer"),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
