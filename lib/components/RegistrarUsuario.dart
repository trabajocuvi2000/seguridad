import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegistrarUsuario extends StatefulWidget {
  const RegistrarUsuario({super.key});

  @override
  State<RegistrarUsuario> createState() => _RegistrarUsuarioState();
}

class _RegistrarUsuarioState extends State<RegistrarUsuario> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
           
            Container(
              child: FittedBox(child: Icon(Icons.qr_code), fit: BoxFit.fill),
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 3,
              padding: EdgeInsets.only(
                left: 15,
                right: 15,
                top: 10,
              ),
              // margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10), // this was before
              // margin: const EdgeInsets.fromLTRB(10, 0, 10, 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    color: Colors.grey.shade400,
                  ),
                ],
              ),
            ),
            
            Text("484468548",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
