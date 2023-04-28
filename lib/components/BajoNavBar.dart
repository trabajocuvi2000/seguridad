import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BajoNavBar extends StatefulWidget {
  const BajoNavBar({super.key});

  @override
  State<BajoNavBar> createState() => _BajoNavBarState();
}

class _BajoNavBarState extends State<BajoNavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'gestionVecinos');
            },
            child: Icon(
              Icons.admin_panel_settings_rounded,
              size: 30,
              color: Colors.white,
            ),
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
