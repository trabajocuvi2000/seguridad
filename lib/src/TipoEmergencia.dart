import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hola/components/EmergenciaAppBar.dart';

class TipoEmergencia extends StatefulWidget {
  const TipoEmergencia({super.key});

  @override
  State<TipoEmergencia> createState() => _TipoEmergenciaState();
}

class _TipoEmergenciaState extends State<TipoEmergencia> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          // Navbar
          EmergenciaAppBar(),
          // Body
          Container(
            // height: 500,
            // height: double.infinity,
            // height: MediaQuery.of(context).size.height,
            padding: EdgeInsets.only(top: 15),
            decoration: BoxDecoration(
              color: Color(0xFFEDECF2),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(35),
                topRight: Radius.circular(35),
                bottomLeft: Radius.circular(35),
                bottomRight: Radius.circular(35),
              ),
            ),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 1.5,
                  padding: EdgeInsets.only(
                    left: 15,
                    right: 15,
                    top: 10,
                  ),
                  // margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10), // this was before
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 20),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 243, 132, 132),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          // Navigator.pushNamed(context, 'itemPage');
                        },
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Image.network(
                            "https://cdn-icons-png.flaticon.com/512/26/26300.png",
                            height: 110,
                            width: 110,
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   height: 10.0,
                      // ),
                      Container(
                        alignment: Alignment.center,
                        // height: 50,
                        child: SingleChildScrollView(
                          child: Text(
                            "Comunal",
                            style: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      Row(
                        children: [
                          Text(
                            "Tipo de Emergencia: ",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text("Grave.",
                            style: TextStyle(color: Colors.white),)
                        ],
                      ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      Row(
                        children: [
                          Text(
                            "Direccion: ",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text("Sector Parque Industrial.",
                            style: TextStyle(color: Colors.white),)
                        ],
                      ),
                      // SizedBox(
                      //   height: 10,
                      // ),
                      Row(
                        children: [
                          Text(
                            "Persona que Reporta: ",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            "Juan Perez.",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            "Lugar: ",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Icon(Icons.gps_fixed,color: Colors.white,),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        onTap: (index) {},
        height: 55,
        // color: Color.fromARGB(255, 56, 104, 235), //0xFF4C53A2
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
