import 'package:flutter/material.dart';

class Tip24Page extends StatefulWidget {
  final String title;
  const Tip24Page({Key? key, this.title = 'Tip24Page'}) : super(key: key);
  @override
  Tip24PageState createState() => Tip24PageState();
}
class Tip24PageState extends State<Tip24Page> {
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