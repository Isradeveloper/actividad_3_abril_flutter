// ignore_for_file: unnecessary_const

import 'dart:ffi';

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
                height: 200,
                width: MediaQuery.of(context).size.width,
                color: const Color.fromARGB(255, 23, 80, 172),
              ),
            ),
            Positioned(
                top: 100,
                child: Container(
                  padding: const EdgeInsets.only(left: 25),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                  ),
                )),
            Positioned(
                top: 15,
                right: 20,
                child: SizedBox(
                  height: 90,
                  width: 90,
                  child: Image.asset("assets/images/avatar.png"),
                )),
            Positioned(
                top: 180,
                child: Container(
                  height: MediaQuery.of(context).size.height - 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(20))),
                  child: Container(
                    padding:
                        const EdgeInsets.only(left: 20, top: 20, right: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Tópicos Populares",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 200,
                          width: MediaQuery.of(context).size.width,
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: const [
                              CardTopic(
                                titulo: "Java",
                                posts: 30,
                                color: Colors.purple,
                              ),
                              CardTopic(
                                titulo: "Python",
                                posts: 100,
                                color: Colors.red,
                              ),
                              CardTopic(
                                titulo: "Dart",
                                posts: 24,
                                color: Colors.lightBlue,
                              ),
                              CardTopic(
                                titulo: "Vue",
                                posts: 34,
                                color: Colors.green,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "Tendencias",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          height: 250,
                          child: ListView(
                            scrollDirection: Axis.vertical,
                            children: const [
                              CardTrending(
                                texto:
                                    "Et ut excepteur nulla qui sunt ipsum eiusmod ex esse reprehenderit et duis proident nisi. Dolor elit eiusmod sint eiusmod tempor ullamco sint consectetur eiusmod aliquip voluptate minim. Ipsum laborum do eiusmod aliqua in officia ullamco. Lorem irure do non nulla amet ex esse deserunt sint.",
                                likes: 10,
                                views: 100,
                              ),
                              CardTrending(
                                texto:
                                    "Cupidatat pariatur aliquip ipsum in aliqua Lorem eu cupidatat cupidatat. Proident non adipisicing laborum cillum non consectetur qui. Occaecat est excepteur exercitation nisi irure mollit nisi nulla incididunt.",
                                likes: 200,
                                views: 400,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class CardTrending extends StatelessWidget {
  final String texto;
  final int likes;
  final int views;

  const CardTrending(
      {super.key,
      required this.texto,
      required this.likes,
      required this.views});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      margin: const EdgeInsets.only(bottom: 20),
      height: 300,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: Column(
        children: [
          Row(
            children: [
              SizedBox(
                  height: 70,
                  width: 70,
                  child: Image.asset("assets/images/avatar.png")),
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Israel Trujillo",
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      "Hace 1 hora",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Text(texto),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.thumb_up),
                  const SizedBox(width: 8),
                  Text("$likes Likes")
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.remove_red_eye),
                  const SizedBox(width: 8),
                  Text("$views Views")
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class CardTopic extends StatelessWidget {
  final String titulo;
  final int posts;
  final dynamic color;

  const CardTopic(
      {super.key,
      required this.titulo,
      required this.posts,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      margin: const EdgeInsets.only(right: 10),
      decoration: (BoxDecoration(
          color: color,
          borderRadius: const BorderRadius.all(Radius.circular(25)))),
      child: Container(
        padding: const EdgeInsets.only(left: 20, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              titulo,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            const SizedBox(height: 20),
            Text(
              "$posts Posts",
              style: const TextStyle(color: Colors.white, fontSize: 20),
            ),
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
