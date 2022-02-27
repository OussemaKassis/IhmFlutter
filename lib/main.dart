import 'package:flutter/material.dart';

//routes
import 'package:ihmapplication/src/routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      debugShowCheckedModeBanner: false,
      routes: routes,
      initialRoute: 'welcome',
      theme: ThemeData(
        accentColor: Color(0xFFEF7C8E),
        primaryColor: Color(0xFFFAE8E0),
        buttonColor: Color(0xFFB6E2D3),
        disabledColor: Color(0xFFD8A7B1),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          iconTheme: IconThemeData(
            color: Colors.black
          ),
        ),
      ),
    );
  }
}