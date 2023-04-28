import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListarUsuarios extends StatefulWidget {
  const ListarUsuarios({super.key});

  @override
  State<ListarUsuarios> createState() => _ListarUsuariosState();
}

class _ListarUsuariosState extends State<ListarUsuarios> {
  final entries = [
    {
      "nombre": "Ana",
      "description": "Emergencia Publica",
    },
    {
      "nombre": "Lorena",
      "description": "Emergencia Medica",
    },
    {
      "nombre": "Joaquin",
      "description": "Emergencia Medica",
    },
    {
      "nombre": "Marta",
      "description": "Emergencia Medica",
    },
  ];
  // final List<int> colorCodes = <int>[600, 500, 100];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: entries.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                // color: Color.fromARGB(255, 189, 187, 187),
                // blurRadius: 4,
                // offset: Offset(4,4), // Shadow position
                blurRadius: 4,
                // offset: Offset(
                //   1,
                //   1,
                // ),
                color: Colors.grey.shade400,
              ),
            ],
          ),
          height: 50,
          // color: Colors.amber[colorCodes[index]],
          // child: Center(child: Text('Entry ${entries[index]["nombre"]}')),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Row(
                    children: [
                      Icon(Icons.person),
                      SizedBox(width: 5,),
                      Text('Entry ${entries[index]["nombre"]}')
                    ],
                  ),
                ),
                Icon(
                  Icons.delete,
                  color: Colors.redAccent,
                )
              ],
            ),
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(),
    );
  }
}
