import 'package:flutter/material.dart';

class Tip35Page extends StatefulWidget {
  final String title;
  const Tip35Page({Key? key, this.title = 'Tip35Page'}) : super(key: key);
  @override
  Tip35PageState createState() => Tip35PageState();
}
class Tip35PageState extends State<Tip35Page> {
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