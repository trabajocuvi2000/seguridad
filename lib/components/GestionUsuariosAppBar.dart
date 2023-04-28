import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GestionUsuariosAppBar extends StatefulWidget {
  const GestionUsuariosAppBar({super.key});

  @override
  State<GestionUsuariosAppBar> createState() => _GestionUsuariosAppBarState();
}

class _GestionUsuariosAppBarState extends State<GestionUsuariosAppBar> {
  @override
  Widget build(BuildContext context) {
     return Container(
      color: Colors.white,
      padding: EdgeInsets.all(15),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              // goes back to the previous pegae/screen
              // Navigator.pop(context);
              Navigator.pushNamed(context, 'emergencias');
            },
            child: Icon(
              Icons.arrow_back,
              size: 30,
              color: Color(0xFF0071bc),
              // #009fe3
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Text(
              "Gestion Usuarios",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0071bc),
              ),
            ),
          ),
          Spacer(),
          CircleAvatar(
            radius: 20.0,
            backgroundColor: Color.fromARGB(255, 230, 228, 228),
            backgroundImage: AssetImage("images/user.png"),
            // child: Image.asset(
            //   "images/user.png",
            //   fit: BoxFit.fill,
            // ),
          ),
        ],
      ),
    );
  }
}