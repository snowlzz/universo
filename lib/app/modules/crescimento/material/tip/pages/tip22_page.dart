import 'package:flutter/material.dart';

class Tip22Page extends StatefulWidget {
  final String title;
  const Tip22Page({Key? key, this.title = 'Tip22Page'}) : super(key: key);
  @override
  Tip22PageState createState() => Tip22PageState();
}
class Tip22PageState extends State<Tip22Page> {
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