// ignore_for_file: prefer_const_constructors

import 'package:app_estoque/screen/widget/menu_drawer.dart';
import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      drawer: menuDrawer(context),
    );
  }
}
