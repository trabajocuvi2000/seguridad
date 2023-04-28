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
            Text(
              "QR",
              style: TextStyle(fontSize: 20, color: Color(0xFF009fe3)),
            ),
            Container(
              child: FittedBox(child: Icon(Icons.camera), fit: BoxFit.fill),
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
            Text(
              "o",
              style: TextStyle(fontSize: 20, color: Color(0xFF009fe3)),
            ),
            TextField(
              enableInteractiveSelection: false,
              textCapitalization: TextCapitalization.characters,
              // obscureText: true,
              decoration: InputDecoration(
                  hintText: "Igrese el codigo",
                  labelText: "Codigo",
                  suffixIcon: Icon(Icons.code_off),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0))),
            ),
          ],
        ),
      ),
    );
  }
}
