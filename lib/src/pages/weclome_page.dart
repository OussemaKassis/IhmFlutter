// ignore_for_file: deprecated_member_use, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter/services.dart';
import 'package:ihmapplication/src/pages/login_page.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.white
      )
    );
    
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('images/welcome.jpg'),
              )
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
              child: Container(
                color: Colors.black.withOpacity(0.3),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: const Text('THE ROYAL DONUTS DELIVARY APP',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 45.0),
                        textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
                child: const Text(
                    'Easiest way to enjoy our delicious donuts in Tunis ;) ',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 17.0)),
              ),
              Container(
                width: 350.0,
                height: 45.0,
                margin: EdgeInsets.only(top: 20.0),
                child: RaisedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                  color: Theme.of(context).accentColor,
                  child: Text('Log in',
                      style: TextStyle(color: Colors.white, fontSize: 15.0)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 20.0),
                width: 350.0,
                height: 45.0,
                child: RaisedButton(
                    onPressed: () {
                      // LOGIN WITH FACEBOOK...
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0)),
                    color: Color.fromARGB(255, 9, 121, 212),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                          image: AssetImage('images/f.png'),
                          width: 20.0,
                          height: 20.0,
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10.0),
                          child: Text('Connect with facebook',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15.0)),
                        )
                      ],
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
