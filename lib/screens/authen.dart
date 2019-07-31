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

  Widget showtext() {
    return Text(
      'Arthit TPA',
      style: TextStyle(
          fontSize: 30.0,
          color: Colors.blue[200],
          fontWeight: FontWeight.bold,
          fontFamily: 'Lacquer'),
    );
  }

  Widget emailText() {
    return Container(
      width: 200.0,
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: 'Email:',
          hintText: 'your@email.com',
        ),
      ),
    );
  }
 Widget PasswordText() {
    return Container(
      width: 200.0,
      child: TextFormField(
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Password:',
          hintText: 'More 6 ccharacters',
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 60.0),
        alignment: Alignment.topCenter,
        child: Column(
          children: <Widget>[
            showLogo(),
            showtext(),
            emailText(),
            PasswordText(),
          ],
        ),
      ),
    );
  }
}
