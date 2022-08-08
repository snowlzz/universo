import 'package:flutter/material.dart';

class Tip15Page extends StatefulWidget {
  final String title;
  const Tip15Page({Key? key, this.title = 'Tip15Page'}) : super(key: key);
  @override
  Tip15PageState createState() => Tip15PageState();
}
class Tip15PageState extends State<Tip15Page> {
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