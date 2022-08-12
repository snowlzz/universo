import 'package:flutter/material.dart';

class Tip34Page extends StatefulWidget {
  final String title;
  const Tip34Page({Key? key, this.title = 'Tip34Page'}) : super(key: key);
  @override
  Tip34PageState createState() => Tip34PageState();
}
class Tip34PageState extends State<Tip34Page> {
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