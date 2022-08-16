import 'package:flutter_modular/flutter_modular.dart';
import 'package:universo/app/modules/projeto/projeto_store.dart';
import 'package:flutter/material.dart';

class ProjetoPage extends StatefulWidget {
  final String title;
  const ProjetoPage({Key? key, this.title = 'ProjetoPage'}) : super(key: key);
  @override
  ProjetoPageState createState() => ProjetoPageState();
}
class ProjetoPageState extends State<ProjetoPage> {
  final ProjetoStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[Placeholder()],
      ),
    );
  }
}