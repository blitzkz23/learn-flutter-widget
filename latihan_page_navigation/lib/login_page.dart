import 'package:flutter/material.dart';
import 'main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(child: Text("Login"),
        onPressed: () {
          // ! Menggunakan push replacement karena halaman ini akan direplace dan tidak bisa diback lagi dari main page
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
            return MainPage();
          }));
        },),
      ),
    );
  }
}