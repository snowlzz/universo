import 'package:flutter/material.dart';

class Tip29Page extends StatefulWidget {
  final String title;
  const Tip29Page({Key? key, this.title = 'Tip29Page'}) : super(key: key);
  @override
  Tip29PageState createState() => Tip29PageState();
}
class Tip29PageState extends State<Tip29Page> {
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