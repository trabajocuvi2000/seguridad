import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatefulWidget {
  const HomeAppBar({super.key});

  @override
  State<HomeAppBar> createState() => _HomeAppBarState();
}

class _HomeAppBarState extends State<HomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(15), // before it as 25
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              // data.currentState?.openDrawer();
              // AuthController.instance.logOut();
            },
            child: Icon(
              Icons.sort,
              size: 30,
              color: Color(0xFF0071bc), //0xFF4C53A2
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              'Alerta / Emergencias',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xFF0071bc), //0xFF4C53A2
              ),
            ),
          ),
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
