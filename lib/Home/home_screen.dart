import 'package:flutter/material.dart';
import 'package:gustav_login/Form-Login/Login_screen.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyLogin()),
            );
          }, 
          icon: Icon(Icons.home)),
        title: Text(
          'Home',
          style: TextStyle(
            fontFamily: 'SpicyRice-Regular',
            fontSize: 30,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          'Welcome To Home 👏',
          style: TextStyle(
            fontSize: 30,
            fontFamily: 'SpicyRice-Regular',
          ),
        ),
      ),
    );
  }
}