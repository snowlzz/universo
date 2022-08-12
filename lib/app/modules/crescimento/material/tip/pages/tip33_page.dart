import 'package:flutter/material.dart';

class Tip33Page extends StatefulWidget {
  final String title;
  const Tip33Page({Key? key, this.title = 'Tip33Page'}) : super(key: key);
  @override
  Tip33PageState createState() => Tip33PageState();
}
class Tip33PageState extends State<Tip33Page> {
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