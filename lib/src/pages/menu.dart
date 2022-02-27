// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, unnecessary_new, prefer_const_literals_to_create_immutables

import 'dart:html';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:ihmapplication/src/colors/colors.dart';
import 'package:ihmapplication/src/pages/create_account.dart';
import 'package:ihmapplication/src/pages/details.dart';
import 'package:ihmapplication/src/widgets/back_button.dart';
import 'dart:ui';

import 'package:ihmapplication/src/widgets/menu_button.dart';

class MenuPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Colors.white
      )
    );
    final Size size = MediaQuery.of(context).size;
    List<String> donutsImg = ['donut1', 'donut2', 'donut3'];
    List<String> donuts = ['Chocolat', 'Fraise', 'Pistache'];
    List<String> donutsPrice = ['5,500DT', '6,500DT', '7,000DT'];
    final _random = new Random();
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 252, 239, 243),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(top:20.0, left: 20.0),
                child: menuButton(context, Color.fromARGB(255, 70, 70, 70)),
              ),
              RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyLarge,
                  children: [
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Icon(Icons.donut_small,color: Theme.of(context).disabledColor),
                      ),
                    ),
                    TextSpan(text: 'DONUTS MENU.',style: TextStyle(
                      color: Theme.of(context).disabledColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20.0,
                    )),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top:20.0, right: 40.0),
                child: IconButton(
                  icon: Icon(
                    Icons.account_box,
                    color: Colors.pink, 
                    size:60.0,
                  ),
                  onPressed: () {
                    Navigator.pop( context );
                  },
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 40.0,left: 40.0),
                width: size.width*0.7,
                height: 100.0,
                child: Text("Lets eat some donuts!", style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 30.0,
                ),textAlign: TextAlign.left,),
              )
            ],
          ),
          Row(
            children: [
              Expanded(child: Container(
                margin: EdgeInsets.only(left: 20.0, top: 5.0),
                padding: EdgeInsets.only(left:10.0,top: 0,bottom: 0,right: 10),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),

                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Row(children: [
                  Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 116, 116, 116),
                  ),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        hintText: 'Search',
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                        )
                      ),
                    ),
                  ),
                  Icon(
                    Icons.mic,
                    color: Color.fromARGB(255, 116, 116, 116),
                  ),
                ]),
              ),
              ),
              Container(
                margin: EdgeInsets.only(left: 40.0, top: 5.0, right: 20.0),
                padding: EdgeInsets.all(13.5),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),

                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Row(children: [
                  Icon(
                    Icons.filter_list_sharp,
                    color: Color.fromARGB(255, 116, 116, 116),
                  ),
                ]),
              ),
              
            ],
          ),
          Row(
            children: [
              Container(
                height: 45,
                margin: EdgeInsets.only(left:20.0,top: 10, bottom: 10),
                padding: EdgeInsets.only(left: 5, right: 5),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 240, 133, 169),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: Theme.of(context).textTheme.bodyLarge,
                    children: [
                      WidgetSpan(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Icon(Icons.ac_unit_outlined,color: Colors.blue),
                        ),
                      ),
                      TextSpan(text: 'Christmas.',style: TextStyle(
                        color: Color.fromARGB(255, 48, 12, 26),
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      )),
                    ],
                  ),
                ),
              ),
              Container(
                height: 45,
                margin: EdgeInsets.only(left:10.0,top: 10, bottom: 10),
                padding: EdgeInsets.only(left: 5, right: 5),
                decoration: BoxDecoration(
                  color: Theme.of(context).disabledColor,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyLarge,
                  children: [
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Icon(Icons.group,color: Color.fromARGB(255, 255, 32, 32)),
                      ),
                    ),
                    TextSpan(text: 'Friends.',style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                    )),
                  ],
                ),
              ),
              ),
              Container(
                height: 45,
                margin: EdgeInsets.only(left:10.0,top: 10, bottom: 10),
                padding: EdgeInsets.only(left: 5, right: 5),
                decoration: BoxDecoration(
                  color: Theme.of(context).disabledColor,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyLarge,
                  children: [
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Icon(Icons.card_giftcard, color:Colors.orange),
                      ),
                    ),
                    TextSpan(text: 'Gift.',style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                    )),
                  ],
                ),
              ),
              ),
              Container(
                height: 45,
                margin: EdgeInsets.only(left:10.0,top: 10, bottom: 10),
                padding: EdgeInsets.only(left: 5, right: 5),
                decoration: BoxDecoration(
                  color: Theme.of(context).disabledColor,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: RichText(
                text: TextSpan(
                  style: Theme.of(context).textTheme.bodyLarge,
                  children: [
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Icon(Icons.more, color:Color.fromARGB(255, 0, 255, 42)),
                      ),
                    ),
                    TextSpan(text: 'More.',style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                      )),
                    ],
                  ),
                ),
              ),
            ],
          ),
          new Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(30, (index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DonutDetails()),
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.all(5),
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                    ),
                    child: Column(children: [
                      Image(
                        image: AssetImage('images/'+donutsImg[_random.nextInt(donutsImg.length)]+'.png'),
                        width: 110,
                        height: 110,
                      ),
                      Container(
                        width: 25,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Row(children: [
                          Icon(
                            Icons.search_sharp,
                            color: Color.fromARGB(255, 116, 116, 116),
                          ),
                        ]),
                      ),
                      Text("Donut "+donuts[_random.nextInt(donuts.length)]),
                      Text(donutsPrice[_random.nextInt(donutsPrice.length)]),
                    ]),
                  ),
                );
              }),
            ),
          ),
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