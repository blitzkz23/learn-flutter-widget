import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String message = "Ini adalah teks";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Anonymous Method"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(message),
              ElevatedButton(
                child: Text("Pencet Saya"),
                // ! Anonymous function digunakan jika dirasa function hanya digunakan sekali dan tidak digunakan di tempat lain
                // ! dan juga untuk mempersingkat code
                onPressed: () {
                  setState(() {
                    message = "Terimakasih telah memencetkuh";
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
