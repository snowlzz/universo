import 'package:flutter/material.dart';

class Tip30Page extends StatefulWidget {
  final String title;
  const Tip30Page({Key? key, this.title = 'Tip30Page'}) : super(key: key);
  @override
  Tip30PageState createState() => Tip30PageState();
}
class Tip30PageState extends State<Tip30Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}