import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.lime),
      home: new HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Suraj"),
        // In Iphones there is no elevation
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new ListTile(
              title: new Text("Members"),
            ),
            new ListTile(
              title: new Text("Din Vishes"),
            ),
            new ListTile(
              title: new Text("Suvichar"),
            ),
            new ListTile(
              title: new Text("Feedback"),
            ),
            new ListTile(
              title: new Text("Settings"),
            ),
            new ListTile(
              title: new Text("Mode"),
            ),
          ],
        ),
      ),
      body: new Container(
        child: new Center(
          child: new Text("Hello Sonal"),
        ),
      ),
    );
  }
}
