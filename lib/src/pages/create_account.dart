import 'dart:html';

import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:ihmapplication/src/pages/weclome_page.dart';

import '../widgets/back_button.dart';

class CreateAccountPage extends StatelessWidget {
  const CreateAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
// BG
              ),
              Container(
                margin: EdgeInsets.only(top: 50.0, left: 20.0),
                child: backButton(context, Colors.black),
              )
            ],
          ),
          Transform.translate(
            offset: Offset(0.0, -20.0),
            child: Container(
              margin: EdgeInsets.only(top: 50.0),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Center(
                  child: Column(
                    children: [
                      Text("Create an account",
                        style: TextStyle(
                          color: Theme.of(context).disabledColor,
                          fontWeight: FontWeight.bold,
                          fontSize: 40.0,
                        )
                      ),
                      _emailInput(),
                      _passwordInput(),
                      _usernameInput(),
                      _addressInput(),
                      _phoneInput(),
                      _CreateButton(context),
                      Container(
                        margin: EdgeInsets.only(top: 40.0,left: 40.0,right: 40.0),
                        child: Center(
                          child: Text("By clicking 'Sign up' you agree to our Terms of use, our Privacy policy and Disclaimers",
                            style: TextStyle(
                              color: Color.fromARGB(255, 126, 126, 126),
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0,
                            )
                          ),
                        ),
                      )
                    ],
                  ),
                )
              )
            ),
          ),
        ],
      ),
    );
  }
}

Widget _emailInput() {
  return Container(
    margin: EdgeInsets.only(top: 40.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 243, 243, 243),
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'Email',
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          )),
    ),
  );
}

Widget _usernameInput() {
  return Container(
    margin: EdgeInsets.only(top: 15.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 243, 243, 243),
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'Username',
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          )),
    ),
  );
}

Widget _phoneInput() {
  return Container(
    margin: EdgeInsets.only(top: 15.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 243, 243, 243),
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          hintText: 'Phone number',
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          )),
    ),
  );
}

Widget _addressInput() {
  return Container(
    margin: EdgeInsets.only(top: 15.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 243, 243, 243),
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
          hintText: 'Address',
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          )),
    ),
  );
}

Widget _passwordInput() {
  return Container(
    margin: EdgeInsets.only(top: 15.0),
    padding: EdgeInsets.only(left: 20.0),
    decoration: BoxDecoration(
      color: Color.fromARGB(255, 243, 243, 243),
      borderRadius: BorderRadius.circular(30.0),
    ),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Password',
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
          )),
    ),
  );
}

Widget _CreateButton(BuildContext context) {
  return Container(
    width: 400.0,
    height: 45.0,
    margin: EdgeInsets.only(top: 50.0),
    child: RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WelcomePage()),
        );
      },
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      color: Theme.of(context).accentColor,
      child:
          Text('Sign up', style: TextStyle(color: Colors.white, fontSize: 17.0)),
    ),
  );
}
