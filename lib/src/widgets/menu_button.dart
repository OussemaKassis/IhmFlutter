// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

Widget menuButton( BuildContext context, Color color ) {
  
  return IconButton(
    icon: Icon(
      Icons.menu,
      color: color, 
      size: 40.0,
    ),
    onPressed: () {
    },
  );
}