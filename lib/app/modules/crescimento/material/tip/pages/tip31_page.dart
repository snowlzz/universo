import 'package:flutter/material.dart';

class Tip31Page extends StatefulWidget {
  final String title;
  const Tip31Page({Key? key, this.title = 'Tip31Page'}) : super(key: key);
  @override
  Tip31PageState createState() => Tip31PageState();
}
class Tip31PageState extends State<Tip31Page> {
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