import 'package:flutter/material.dart';

class Tip27Page extends StatefulWidget {
  final String title;
  const Tip27Page({Key? key, this.title = 'Tip27Page'}) : super(key: key);
  @override
  Tip27PageState createState() => Tip27PageState();
}
class Tip27PageState extends State<Tip27Page> {
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