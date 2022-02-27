// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_cube/flutter_cube.dart';

class DonutDetails extends StatefulWidget {
  DonutDetails({Key? key}) : super(key: key);

  @override
  State<DonutDetails> createState() => _DonutDetailsState();
}

class _DonutDetailsState extends State<DonutDetails> {
  Object donut = Object(fileName: "assets/images/donutobj.obj");
  @override
  void initState() {
    donut = Object(fileName: "assets/images/donutobj.obj");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 239, 243),
      body: Column(
        children: [
          Container(
            width: size.width,
            height: size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blueAccent, Colors.greenAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
              )
            ),
            child: Cube(
                onSceneCreated: (Scene scene) {
                  scene.world.add(donut);
                  scene.camera.zoom = 10;
                },
              ),
          )
        ],
      ),
      bottomNavigationBar: _bottomNavigationBar()
    );
  }
}

Widget _bottomNavigationBar() {
  return BottomNavigationBar(
    type: BottomNavigationBarType.shifting,
    unselectedItemColor: Color.fromARGB(255, 145, 145, 145),
    selectedItemColor: Colors.black,
    items: <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.explore),
        label: 'Explore',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart),
        label: 'My Order',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.book),
        label: 'Favorite',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person_pin),
        label: 'Profile',
      ),
    ],
  );
}
