import 'package:flutter/material.dart';

class Tip26Page extends StatefulWidget {
  final String title;
  const Tip26Page({Key? key, this.title = 'Tip26Page'}) : super(key: key);
  @override
  Tip26PageState createState() => Tip26PageState();
}
class Tip26PageState extends State<Tip26Page> {
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