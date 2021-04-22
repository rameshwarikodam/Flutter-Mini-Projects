import 'package:flutter/material.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: new Text("Load JSON App"),
      ),
      body: new Container(
        child: new Center(
          child: new FutureBuilder(
              //used for loading json file
              future: DefaultAssetBundle.of(context).loadString('load-json/person.json'),
              builder: (context, snapshot) {
                //Decoding Json
                var myData = JSON.decode(snapshot.data.toString());
                return new ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    return new Card(
                      child: new Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          new Text("Name: " + myData[index]['name']),
                          new Text("Age" + myData[index]['age']),
                          new Text("Height: " + myData[index]['height']),
                          new Text("Hair Color: " + myData[index]['hair-color']),
                          new Text("Gender: " + myData[index]['gender']),
                        ],
                      ),
                    );
                  },
                  itemCount: myData == null ? 0 : myData.length,
                );
              }),
        ),
      ),
    );
  }
}
