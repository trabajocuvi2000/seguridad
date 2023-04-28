import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Emergencia extends StatefulWidget {
  const Emergencia({super.key});

  @override
  State<Emergencia> createState() => _EmergenciaState();
}

class _EmergenciaState extends State<Emergencia> {
  var emergencia_list = [
    {
      "image": "https://cdn-icons-png.flaticon.com/512/26/26300.png",
      "description": "Emergencia Publica",
    },
    {
      "image": "https://cdn-icons-png.flaticon.com/512/4320/4320333.png",
      "description": "Emergencia Medica",
    },  
    {
      "image": "https://cdn-icons-png.flaticon.com/512/1/1324.png",
      "description": "Emergencia Publica",
    },
    {
      "image": "https://cdn-icons-png.flaticon.com/512/158/158592.png",
      "description": "Panico",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        // childAspectRatio: 0.60,
      ),
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: emergencia_list.length,
      itemBuilder: (BuildContext ctx, index) {
        return Container(
          padding: EdgeInsets.only(left: 15, right: 15, top: 10,),
          // margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10), // this was before
          margin: const EdgeInsets.fromLTRB(10, 0, 10, 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, 'tipoEmergencia');
                },
                child: Container(
                  margin: EdgeInsets.all(10),
                  child: Image.network(
                    "${emergencia_list[index]['image']}",
                    // "data:image/png;base64,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",
                    height: 90,
                    width: 90,
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                alignment: Alignment.center,
                // height: 50,
                child: SingleChildScrollView(
                  child: Text(
                    "${emergencia_list[index]['description']}",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF009fe3)
                      // color: Color.fromARGB(255, 235, 122, 56), //0xFF4C53A2
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
