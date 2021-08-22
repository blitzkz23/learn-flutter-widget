import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green,
        body: ListView(
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: CardTemplate(iconName: Icons.adb, text: "Android",),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: CardTemplate(iconName: Icons.settings, text: "Setting",),
            ),
          ],
        ),
      ),
    );
  }
}

class CardTemplate extends StatelessWidget {
  final IconData iconName;
  final String text;

  const CardTemplate({
    Key? key,
    required this.iconName,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(20),
        child: Row(
          children: [
            Icon(iconName, color: Colors.greenAccent,),
            Text(text),
          ],
        ),
      ),
    );
  }
}
