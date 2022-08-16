import 'package:flutter/material.dart';

class Tip25Page extends StatefulWidget {
  final String title;
  const Tip25Page({Key? key, this.title = 'Tip25Page'}) : super(key: key);
  @override
  Tip25PageState createState() => Tip25PageState();
}
class Tip25PageState extends State<Tip25Page> {
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