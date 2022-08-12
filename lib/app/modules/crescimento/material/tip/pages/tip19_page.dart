import 'package:flutter/material.dart';

class Tip19Page extends StatefulWidget {
  final String title;
  const Tip19Page({Key? key, this.title = 'Tip19Page'}) : super(key: key);
  @override
  Tip19PageState createState() => Tip19PageState();
}
class Tip19PageState extends State<Tip19Page> {
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