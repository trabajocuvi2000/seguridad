import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hola/components/GestionUsuariosAppBar.dart';
import 'package:hola/components/ListarUsuarios.dart';
import 'package:hola/components/RegistrarUsuario.dart';

class GestionVecinos extends StatefulWidget {
  const GestionVecinos({super.key});

  @override
  State<GestionVecinos> createState() => _GestionVecinosState();
}

class _GestionVecinosState extends State<GestionVecinos> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 118,
          flexibleSpace: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestionUsuariosAppBar(),
                TabBar(
                  indicatorColor: Color(0xFF0071bc),
                  tabs: [
                    Tab(
                      icon: Icon(
                        Icons.people,
                        color: Color(0xFF0071bc),
                      ),
                    ),
                    Tab(
                      icon: Icon(
                        Icons.person_add,
                        color: Color(0xFF0071bc),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: TabBarView(
          children: [
            ListarUsuarios(),
            RegistrarUsuario(),
            // Icon(Icons.directions_transit, size: 50),
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
      ),
    );
  }
}
