import 'package:flutter/material.dart';

class Members extends StatelessWidget {
  final String title;

  Members(this.title);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
      ),
      body: new Column(
        children: <Widget>[
          new ListTile(
            title: new Text("Sujit Vidhate"),
          ),
          new ListTile(
            title: new Text("Sujata Dadge"),
          ),
          new ListTile(
            title: new Text("Smita Nagarkar"),
          ),
          new ListTile(
            title: new Text("Ajay Nagarkar"),
          ),
        ],
      ),
    );
  }
}
