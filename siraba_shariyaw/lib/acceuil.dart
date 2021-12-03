import 'package:flutter/material.dart';
import 'package:siraba_shariyaw/acceuilPanneau.dart';

class acceuil extends StatefulWidget {
  const acceuil({Key? key}) : super(key: key);

  @override
  _acceuilState createState() => _acceuilState();
}

class _acceuilState extends State<acceuil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Siraba Shariyaw"),
        centerTitle: true,
      ),
      body: acceuilPanneau(),
    );
  }
}
