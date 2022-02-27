// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ihmapplication/src/pages/details.dart';

//Pages
import 'package:ihmapplication/src/pages/weclome_page.dart';
import 'package:ihmapplication/src/pages/login_page.dart';
import 'package:ihmapplication/src/pages/create_account.dart';
import 'package:ihmapplication/src/pages/menu.dart';
import 'package:ihmapplication/src/tabs/tabs_page.dart';

final routes = <String,WidgetBuilder> {
  'login' : ( BuildContext context ) => LoginPage(),
  'welcome' : ( BuildContext context ) => WelcomePage(),
  'create_account' : ( BuildContext context ) => CreateAccountPage(),
  'menu' : ( BuildContext context ) => MenuPage(),
  'tabs' : ( BuildContext context ) => TabsPage(),
  'details' : ( BuildContext context ) => DonutDetails(),
};