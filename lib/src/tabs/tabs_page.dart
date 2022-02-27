// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ihmapplication/src/widgets/back_button.dart';
import 'package:ihmapplication/src/widgets/menu_button.dart';

class TabsPage extends StatefulWidget {
  TabsPage({Key? key}) : super(key: key);

  @override
  State<TabsPage> createState() => _TabsPageState();
}

class _TabsPageState extends State<TabsPage> {
  int currentIndex = 0;

  setBottomBarIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 202, 248).withAlpha(55),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top:50.0),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 40.0),
                child: menuButton(context, Colors.pink),
              ),
              Text("Donuts menu", 
                style: TextStyle(
                  color: Theme.of(context).disabledColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0,
                ),
                textAlign: TextAlign.center,
              ),
              Container(
                margin: EdgeInsets.only(right: 40.0),
                child: IconButton(
                  icon: Icon(
                    Icons.account_box,
                    color: Colors.pink, 
                    size: 50.0,
                  ),
                  onPressed: () {
                    Navigator.pop( context );
                  },
                )
              ),
            ],
          ),
          
        ],
      ),
      bottomNavigationBar: _customNBottomNavigationBar(context),
    );
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = new Paint()
      ..color = Color(0xFFEF7C8E)
      ..style = PaintingStyle.fill;

    Path path = Path();
    path.moveTo(0, 20); // Start
    path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(Offset(size.width * 0.60, 20), radius: Radius.circular(20.0), clockwise: false);
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

Widget _customNBottomNavigationBar( BuildContext context ) {
  int currentIndex = 0;

  // setBottomBarIndex(index) {
  //   setState(() {
  //     currentIndex = index;
  //   });
  // }
  final Size size = MediaQuery.of(context).size;
  return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          child: Container(
            width: size.width,
            height: 80.0,
            child: Stack(
              overflow: Overflow.visible,
              children: [
                CustomPaint(
                  size: Size(size.width, 80),
                  painter: BNBCustomPainter(),
                ),
                Center(
                  heightFactor: 0.6,
                  child: FloatingActionButton(backgroundColor: Color.fromARGB(255, 0, 0, 0), child: Icon(Icons.shopping_basket,color: Colors.white,), elevation: 0.1, onPressed: () {
                    // Cart pressed.

                  }),
                ),
                Container(
                  width: size.width,
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.home,
                          color: currentIndex == 0 ? Color.fromARGB(255, 7, 7, 7) : Color.fromARGB(255, 255, 255, 255),
                        ),
                        onPressed: () {
                          // setBottomBarIndex(0);
                        },
                        splashColor: Colors.white,
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.explore,
                            color: currentIndex == 1 ? Color.fromARGB(255, 0, 0, 0) : Color.fromARGB(255, 255, 255, 255),
                          ),
                          onPressed: () {
                            // setBottomBarIndex(1);
                          }),
                      Container(
                        width: size.width * 0.20,
                      ),
                      IconButton(
                          icon: Icon(
                            Icons.bookmark,
                            color: currentIndex == 2 ? Color.fromARGB(255, 0, 0, 0) : Color.fromARGB(255, 255, 255, 255),
                          ),
                          onPressed: () {
                            // setBottomBarIndex(2);
                          }),
                      IconButton(
                          icon: Icon(
                            Icons.person_pin,
                            color: currentIndex == 3 ? Color.fromARGB(255, 0, 0, 0) : Color.fromARGB(255, 255, 255, 255),
                          ),
                          onPressed: () {
                            // setBottomBarIndex(3);
                          }),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
}