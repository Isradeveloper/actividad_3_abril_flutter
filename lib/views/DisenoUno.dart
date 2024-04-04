// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class DisenoUno extends StatelessWidget {
  const DisenoUno({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Diseño uno")),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                height: 550,
                width: MediaQuery.of(context).size.width,
                color: Colors.green.shade200,
              ),
            ),
            Positioned(
                top: 40,
                left: 20,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 5)),
                  child: const Icon(
                    Icons.supervised_user_circle,
                    size: 70,
                    color: Colors.white,
                  ),
                )),
            Positioned(
                top: 20,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: const Center(
                    child: const Text(
                      "¿Tienes hambre?",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )),
            Positioned(
                child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Image.asset("assets/images/fondo.png"),
            )),
            Positioned(
                top: 420,
                child: SizedBox(
                  height: 220,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      SizedBox(width: 30),
                      Card(
                        imagen: "assets/images/burger.png",
                        label: "Hamburguesas",
                      ),
                      SizedBox(width: 30),
                      Card(
                          imagen: "assets/images/ensalada.png",
                          label: "Ensaladas"),
                      SizedBox(width: 30),
                      Card(
                        imagen: "assets/images/fastfood.png",
                        label: "Fastfood",
                      ),
                      SizedBox(width: 30),
                      Card(
                        imagen: "assets/images/hotdog.png",
                        label: "Hot dogs",
                      ),
                      SizedBox(width: 30),
                      Card(
                        imagen: "assets/images/jugo.png",
                        label: "Jugos",
                      ),
                      SizedBox(width: 30),
                      Card(
                        imagen: "assets/images/papas.png",
                        label: "Papas",
                      ),
                      SizedBox(width: 30),
                      Card(
                        imagen: "assets/images/pizza.png",
                        label: "Pizzas",
                      ),
                      SizedBox(width: 30),
                      Card(
                        imagen: "assets/images/torta.png",
                        label: "Tortas",
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  final String imagen;
  final String label;

  const Card({super.key, required this.imagen, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: 200,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadiusDirectional.all(Radius.circular(10)),
          border: Border.all(color: Colors.black, width: 3)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagen,
            height: 120,
          ),
          const SizedBox(
            height: 5,
          ),
          Center(
            child: Text(
              label,
              style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
