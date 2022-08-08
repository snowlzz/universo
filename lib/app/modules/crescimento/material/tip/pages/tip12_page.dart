import 'package:flutter/material.dart';

class Tip12Page extends StatefulWidget {
  final String title;
  const Tip12Page({Key? key, this.title = 'Tip12Page'}) : super(key: key);
  @override
  Tip12PageState createState() => Tip12PageState();
}
class Tip12PageState extends State<Tip12Page> {
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