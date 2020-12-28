import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_mobile/Home.dart';
import 'package:project_mobile/Screens/Signup.dart';
import 'package:project_mobile/models/users.dart';
import '../widgets/Login/Loginform.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var Row1 = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(padding: EdgeInsets.only(top: 50.0)),
        Text(
          'Login',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ],
    );
    var Row2 = Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'Enter your login details to access your account',
          style: TextStyle(fontSize: 15, color: Colors.green),
        ),
      ],
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff68b2a0),
        title: Center(child: Image(image: AssetImage('images/Icon.png'))),
      ),
      body: Center(
          child: Container(
              child: new SingleChildScrollView(
        child: Column(
          children: <Widget>[Row1, Row2, LoginForm()],
        ),
      ))),
    );
  }
}