import 'package:flutter/material.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
//Explicit

//Method

  Widget showLogo() {
    return Container(
      width: 125.0,
      height: 125.0,
      child: Image.asset('images/logo.png'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Authen'),
    );
  }
}
