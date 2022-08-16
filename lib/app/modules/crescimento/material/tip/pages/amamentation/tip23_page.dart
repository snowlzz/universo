import 'package:flutter/material.dart';

class Tip23Page extends StatefulWidget {
  final String title;
  const Tip23Page({Key? key, this.title = 'Tip23Page'}) : super(key: key);
  @override
  Tip23PageState createState() => Tip23PageState();
}
class Tip23PageState extends State<Tip23Page> {
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