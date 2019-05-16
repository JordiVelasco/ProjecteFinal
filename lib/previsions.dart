import 'package:flutter/material.dart';
import 'Barceloneta.dart';
import 'Sitges.dart';
import 'Badalona.dart';

class PrevisionsPage extends StatelessWidget {
  PrevisionsPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Surftter',
      theme: ThemeData(
        primaryColor: Colors.amber[900],
      ),
      initialRoute: '/',
      routes: {
        // When we navigate to the "/" route, build the FirstScreen Widget
        '/': (context) => FirstScreen(),
        // When we navigate to the "/second" route, build the SecondScreen Widget
        '/second': (context) => BarcelonetaPage(),
        '/third': (context) => SitgesPage(),
        '/fourth': (context) => BadalonaPage(),
      },
    );
  }
}
class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Previsions'),
      ),
        body: ListView(
          children: <Widget>[
            new ListTile(
              leading: Icon(Icons.person),
              title: Text("Barceloneta"),
              onTap: () {
                Navigator.pushNamed(context, '/second');
              },
            ),
            new ListTile(
              leading: Icon(Icons.person),
              title: Text("Sitges"),
              onTap: () {
                Navigator.pushNamed(context, '/third');
              },
            ),
            new ListTile(
              leading: Icon(Icons.person),
              title: Text("Badalona"),
              onTap: () {
                Navigator.pushNamed(context, '/fourth');
              },
            ),
          ],
        )
    );
  }
}
