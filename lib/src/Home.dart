import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Widget> pages = [
    Text("emergencias"),
    Text("gestionVecinos"),
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages.elementAt(activeIndex),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) {
          setState(() {
            activeIndex = index;
          });
        },
        height: 55,
        color: Color(0xFF0071bc), //0xFF4C53A2
        items: [
          Icon(
            Icons.emergency,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            CupertinoIcons.camera_fill,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.admin_panel_settings_rounded,
            size: 30,
            color: Colors.white,
          ),
          Icon(
            Icons.chat,
            size: 30,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}