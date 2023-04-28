import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hola/components/Emergencia.dart';
import 'package:hola/components/HomeAppBar.dart';

class Emergencias extends StatefulWidget {
  const Emergencias({super.key});

  @override
  State<Emergencias> createState() => _EmergenciasState();
}

class _EmergenciasState extends State<Emergencias> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // navBar
          HomeAppBar(),
          // container
          Container(
            // height: 500,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                // TITLE Items
                Container(
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  child: Text(
                    "Cual es su emergencia",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0071bc), //0xFF4C53A2
                    ),
                  ),
                ),
                // Emergencias
                Emergencia(),
              ],
            ),
          )
        ],
      ),
     bottomNavigationBar: CurvedNavigationBar(
          backgroundColor: Colors.transparent,
          onTap: (index) {},
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
