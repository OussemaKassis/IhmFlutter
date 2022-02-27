// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unnecessary_new

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ihmapplication/src/colors/colors.dart';
import 'package:ihmapplication/src/pages/create_account.dart';
import 'package:ihmapplication/src/pages/menu.dart';
import 'package:ihmapplication/src/tabs/tabs_page.dart';
import 'package:ihmapplication/src/widgets/back_button.dart';
import 'dart:ui';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.white
      )
    );
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image(
                width: double.infinity,
                height: size.height*0.35,
                fit: BoxFit.cover,
                image: AssetImage('images/login.jpg'),
              ),
              Container(
                margin: EdgeInsets.only(top: 50.0,left: 20.0),
                child: backButton(context, Colors.white),
              )
            ],
          ),
          Transform.translate(
            offset: Offset(0.0, -20.0),
            child: Container(
              width: double.infinity,
              height: size.height*0.65,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.0)
              ),
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Center(
                  child: Column(
                    children: [
                      Text("Welcome back", style: TextStyle(
                        color: Theme.of(context).disabledColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 30.0,
                      )),
                      Text("Login to your account", style: TextStyle(
                        color: Theme.of(context).disabledColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0,
                      )),
                      _emailInput(),
                      _passwordInput(),
                      _LoginButton( context ),
                      Container(
                        margin: EdgeInsets.only(top: 30.0),
                        child: Text("Forgot your password?" , style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 17.0,
                        )),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text("Don't have an account?" , style: TextStyle(
                              color: Color.fromARGB(255, 90, 90, 90),
                              fontWeight: FontWeight.w500,
                              fontSize: 15.0,
                            )),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 10.0),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => CreateAccountPage()),
                                  );
                                },
                                child: Text("Sign up now!" , style: TextStyle(
                                color: Theme.of(context).disabledColor,
                                fontWeight: FontWeight.w500, 
                                fontSize: 15.0,
                              ))
                              )
                              ,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      )
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
        )
      ),
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
        )
      ),
    ),
  );
}

Widget _LoginButton (BuildContext context) {
  return Container(
    width: 350.0,
    height: 45.0,
    margin: EdgeInsets.only(top: 30.0),
    child: RaisedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MenuPage()),
        );
      },
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0)),
      color: Theme.of(context).accentColor,
      child: Text('Log in',
          style: TextStyle(color: Colors.white, fontSize: 17.0)),
    ),
  );  
}