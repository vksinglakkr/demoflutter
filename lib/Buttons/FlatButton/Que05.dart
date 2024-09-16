// /lib/Buttons/FlatButton/Que05.dart
import 'package:flutter/material.dart';

class Que05 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextButton.icon\n(label: .., icon: .., onPressed:)'),
      ),
      body: Center(
        child: Container(
          color: Colors.black12,
          child: TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.teal,
              disabledForegroundColor: Colors.red.withOpacity(0.38),
            ),
            child: Text('NIC, Kurukshetra'),
            onPressed: () {
              print('Pressed');
            },
          ),
        ),
      ),
    );
  }
}
