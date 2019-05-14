import 'package:flutter/material.dart';

class PrevisionsPage extends StatefulWidget {
  @override
  _PrevisionsPageState createState() => new _PrevisionsPageState();
}

class _PrevisionsPageState extends State<PrevisionsPage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final List<String> _listViewData = [
    "Barceloneta",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('Previsions'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: _listViewData.map((data) => ListTile(
          leading: Icon(Icons.person),
          title: Text(data),
          onTap: () {
            Navigator.of(context).pop();
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (BuildContext context) => new PrevisionsPage()));
          },
        )).toList(),
      ),
    );
  }
}
