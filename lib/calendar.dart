import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const bdays = [
      {'name': 'Alex', 'date': '10.02.1999'},
      {'name': 'Alex', 'date': '10.02.1999'},
      {'name': 'Alex', 'date': '10.02.1999'},
      {'name': 'Alex', 'date': '10.02.1999'},
      {'name': 'Alex', 'date': '10.02.1999'},
      {'name': 'Alex', 'date': '10.02.1999'},
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Geburtstage'),
      ),
      body: Column(
        children: [
          Birthdays(
            bdays['name'],
        ])
      )
    ));
  }
}
