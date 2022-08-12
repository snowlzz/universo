import 'package:flutter/material.dart';

class Tip28Page extends StatefulWidget {
  final String title;
  const Tip28Page({Key? key, this.title = 'Tip28Page'}) : super(key: key);
  @override
  Tip28PageState createState() => Tip28PageState();
}
class Tip28PageState extends State<Tip28Page> {
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