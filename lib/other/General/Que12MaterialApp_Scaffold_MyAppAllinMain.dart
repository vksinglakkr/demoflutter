// lib/General\Que12MaterialApp_Scaffold_MyAppAllinMain.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

void main() => runApp(
      MaterialApp(
        title: 'Material App',
        home: Scaffold(
          appBar: AppBar(title: WidgetAppBar("MaterialApp Scaffold")),
          body: Que12MaterialApp011(),
        ),
      ),
    );

class Que12MaterialApp011 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            child: Text('Hello World'),
          ),
        ),
      ],
    );
  }
}
