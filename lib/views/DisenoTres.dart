import 'package:flutter/material.dart';

const productos = [
  {"image": "pizza.png", "nombre": "Pizza", "precio": 1200},
  {"image": "burger.png", "nombre": "Burger", "precio": 1200},
  {"image": "torta.png", "nombre": "Torta", "precio": 1200},
  {"image": "ensalada.png", "nombre": "Ensalada", "precio": 1200},
];

class DisenoTres extends StatefulWidget {
  const DisenoTres({super.key});

  @override
  State<DisenoTres> createState() => _DisenoTresState();
}

class _DisenoTresState extends State<DisenoTres> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View"),
      ),
      body: SizedBox(
        height: 200,
        width: MediaQuery.of(context).size.width,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: productos
              .map((producto) => Container(
                    margin: const EdgeInsets.only(right: 5),
                    width: 130,
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.pink.shade50,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5))),
                    child: Column(
                      children: [
                        Image.asset("assets/images/${producto["image"]}"),
                        Text("${producto["nombre"]}"),
                        Text("${producto["precio"]}"),
                      ],
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
