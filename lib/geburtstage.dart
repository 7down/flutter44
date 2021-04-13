import 'package:flutter/material.dart';

class Geburtstage extends StatelessWidget {
  final String title;

  Geburtstage(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.black,
        title: Text(title),
      ),
      body: new Center(child: new Text("what " + title + " said")),
    );
  }
}
