import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Cadastro de Produto",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: null,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextFormField(
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(labelText: "Alimento"),
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(labelText: "Fabricante"),
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(labelText: "Preço"),
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Adicionar Produtos"),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
