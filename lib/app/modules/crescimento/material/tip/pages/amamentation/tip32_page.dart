import 'package:flutter/material.dart';

class Tip32Page extends StatefulWidget {
  final String title;
  const Tip32Page({Key? key, this.title = 'Tip32Page'}) : super(key: key);
  @override
  Tip32PageState createState() => Tip32PageState();
}
class Tip32PageState extends State<Tip32Page> {
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