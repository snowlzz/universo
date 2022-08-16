import 'package:flutter/material.dart';

class Tip21Page extends StatefulWidget {
  final String title;
  const Tip21Page({Key? key, this.title = 'Tip21Page'}) : super(key: key);
  @override
  Tip21PageState createState() => Tip21PageState();
}
class Tip21PageState extends State<Tip21Page> {
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