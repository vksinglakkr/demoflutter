import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que01b extends StatefulWidget {
  @override
  _Que01bState createState() => _Que01bState();
}

class _Que01bState extends State<Que01b> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView with ElevatedButton'),
      ),
      body: ListView(children: [
        ListTile(title: Text('Text A')),
        ListTile(title: Text('Text B')),
        ListTile(title: Text('Text C')),
        ListTile(title: Text('Text D')),
        ElevatedButton(
          onPressed: () => showAlert(context, "You Pressed ElevatedButton"),
          child: Text("Press Me"),
        )
      ]),
    );
  }
}
