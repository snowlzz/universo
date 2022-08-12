import 'package:flutter/material.dart';

class Tip20Page extends StatefulWidget {
  final String title;
  const Tip20Page({Key? key, this.title = 'Tip20Page'}) : super(key: key);
  @override
  Tip20PageState createState() => Tip20PageState();
}
class Tip20PageState extends State<Tip20Page> {
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