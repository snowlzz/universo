import 'package:flutter/material.dart';

class Tip36Page extends StatefulWidget {
  final String title;
  const Tip36Page({Key? key, this.title = 'Tip36Page'}) : super(key: key);
  @override
  Tip36PageState createState() => Tip36PageState();
}
class Tip36PageState extends State<Tip36Page> {
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