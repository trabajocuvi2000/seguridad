import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyAppForm extends StatefulWidget {
  const MyAppForm({super.key});

  @override
  State<MyAppForm> createState() => _MyAppFormState();
}

class _MyAppFormState extends State<MyAppForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.blueGrey[100],
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 30.0),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sistema de Seguridad Comunal",
                style: TextStyle(
                    fontFamily: "cursive",
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              CircleAvatar(
                radius: 100.0,
                backgroundColor: Color.fromARGB(255, 230, 228, 228),
                backgroundImage: AssetImage("images/user.png"),
                // child: Image.asset(
                //   "images/user.png",
                //   fit: BoxFit.fill,
                // ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Correo",
                style: TextStyle(fontFamily: "cursive", fontSize: 20.0),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                enableInteractiveSelection: false,
                autofocus: true,
                textCapitalization: TextCapitalization.characters,
                decoration: InputDecoration(
                    hintText: "Ingrese su Correo",
                    labelText: "Correo",
                    suffixIcon: Icon(Icons.email),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Contraseña",
                style: TextStyle(fontFamily: "cursive", fontSize: 20.0),
              ),
              SizedBox(
                height: 18.0,
              ),
              TextField(
                enableInteractiveSelection: false,
                textCapitalization: TextCapitalization.characters,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "Ingrese su Contraseña",
                    labelText: "Contraseña",
                    suffixIcon: Icon(Icons.lock_outline),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
              SizedBox(
                height: 18.0,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 64, 97, 243),
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15), // <-- Radius
                    ),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, 'emergencias');
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
