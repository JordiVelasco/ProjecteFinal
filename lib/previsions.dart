import 'package:flutter/material.dart';

class PrevisionsPage extends StatefulWidget {
  @override
  _PrevisionsPageState createState() => new _PrevisionsPageState();
}

class _PrevisionsPageState extends State<PrevisionsPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Previsions'),
      ),
    );
  }
}