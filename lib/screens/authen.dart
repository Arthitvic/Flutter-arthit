import 'package:flutter/material.dart';
import 'package:pun_tpa/screens/register.dart';

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
      'Arthit TPA ',
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

  Widget passwordText() {
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

  Widget signInButton() {
    return RaisedButton(
      color: Colors.blue[400],
      child: Text(
        'Sing In',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      onPressed: () {},
    );
  }

  Widget signUpButton() {
    return RaisedButton(
      color: Colors.blue[400],
      child: Text(
        'Sing Up',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
      onPressed: () {
        print('You click Sing Up');
        var registerRoute = MaterialPageRoute(builder: (BuildContext context)=> Register());
        Navigator.of(context).push(registerRoute);
      },
    );
  }

  Widget showButton() {
    return Container(
      width: 200.0,
      child: Row(
        children: <Widget>[
          Expanded(
            child: signInButton(),
          ),
          mySizeBox(),
          Expanded(
            child: signUpButton(),
          ),
        ],
      ),
    );
  }

  Widget mySizeBox() {
    return SizedBox(
      width: 8.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              Colors.white,
              Colors.yellow[300],
            ],
            radius: 3.0,
            center: Alignment.topCenter,
          ),
        ),
        padding: EdgeInsets.only(top: 60.0),
        alignment: Alignment.topCenter,
        child: Column(
          children: <Widget>[
            showLogo(),
            showtext(),
            emailText(),
            passwordText(),
            showButton(),
          ],
        ),
      ),
    );
  }
}
