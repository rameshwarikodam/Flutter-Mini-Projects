import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'members.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(primarySwatch: Colors.lime),
      home: new HomePage(),
      //     routes: <String, WidgetBuilder>{
      //   "/members": (BuildContext context) => new Members("Members List"),
      // }
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Suraj Parivar"),
        // In Iphones there is no elevation
        elevation: defaultTargetPlatform == TargetPlatform.android ? 5.0 : 0.0,
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Rameshwari Kodam"),
              accountEmail: new Text("9834278415"),
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.brown,
                child: new Text("R"),
              ),
            ),
            new ListTile(
                title: new Text("Members"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                      builder: (BuildContext context) => new Members("Member List"),
                    ),
                  );
                }),
            new ListTile(
                title: new Text("Din Vishes"),
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                    new MaterialPageRoute(
                      builder: (BuildContext context) => new Members("Member List"),
                    ),
                  );
                }),
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
            new Divider(),
            new ListTile(
              title: new Text("Close"),
              trailing: new Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
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
