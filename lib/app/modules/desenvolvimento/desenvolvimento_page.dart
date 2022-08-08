// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo/app/modules/desenvolvimento/desenvolvimento_store.dart';
import 'package:flutter/material.dart';

class DesenvolvimentoPage extends StatefulWidget {
  final String title;
  const DesenvolvimentoPage({Key? key, this.title = 'DesenvolvimentoPage'}) : super(key: key);
  @override
  DesenvolvimentoPageState createState() => DesenvolvimentoPageState();
}
class DesenvolvimentoPageState extends State<DesenvolvimentoPage> {
  final DesenvolvimentoStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Desenvolvimento"), 
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 255, 193, 143),
        elevation: 0,
        // leading: IconButton(
        //   icon: const Icon(Icons.arrow_back_ios_new),
        //   onPressed: (){
        //      Modular.to.pushNamed("/");
        //   },
        // ),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}