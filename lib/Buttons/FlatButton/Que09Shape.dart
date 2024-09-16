// /lib/Buttons/FlatButton/Que09Shape.dart
import 'package:flutter/material.dart';

class Que09Shape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('shape:'),
      ),
      body: Center(
        child: Container(
            color: Colors.black12,
            child: TextButton(
              child: Text('NIC, Kurukshetra'),
              style: TextButton.styleFrom(
                foregroundColor: Colors.red,
                backgroundColor: Colors.deepPurple,
                disabledForegroundColor: Colors.blue.withOpacity(0.38),
                shape: const BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
              ),
              onPressed: () {
                print('Pressed');
              },
            )),
      ),
    );
  }
}
