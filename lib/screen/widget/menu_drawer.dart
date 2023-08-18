// ignore_for_file: prefer_const_constructors

import 'package:app_estoque/screen/telaCadastro.dart';
import 'package:flutter/material.dart';

Widget menuDrawer(BuildContext context) {
  return Drawer(
    child: Column(
      children: [
        Container(
          padding: const EdgeInsets.all(40),
          width: double.infinity,
          height: 230,
          color: Colors.blueGrey,
          child: Center(
            child: Column(children: [
              Container(
                margin: const EdgeInsets.only(top: 20),
                width: 70,
                height: 70,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://www.guiaviagensbrasil.com/imagens/Imagem%20do%20mar%20calma%20e%20belo%20da%20Praia%20da%20Engenhoca-Itacar%C3%A9-Bahia-BA.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Minha Compras",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              const SizedBox(height: 10),
              const Text(
                "Por Matheus Teixeira",
                style: TextStyle(fontSize: 10, color: Colors.white),
              ),
            ]),
          ),
        ),
        ListTile(
          leading: Icon(
            Icons.add,
            color: Colors.blueGrey,
          ),
          title: Text(
            "Novo Produto",
            style: TextStyle(fontSize: 16),
          ),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Cadastro()));
          },
        ),
        const ListTile(
          leading: Icon(
            Icons.food_bank,
            color: Colors.blueGrey,
          ),
          title: Text(
            "Meus Produtos",
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    ),
  );
}
