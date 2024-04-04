// ignore_for_file: unnecessary_const

import 'package:flutter/material.dart';

class DisenoDos extends StatelessWidget {
  const DisenoDos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Diseño dos")),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                color: const Color.fromARGB(255, 23, 80, 172),
              ),
            ),
            Positioned(
                top: 200,
                child: Column(
                  children: [
                    Text(
                      "Hola Pedro",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
                    ),
                    Text("La app del programador",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15))
                  ],
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
