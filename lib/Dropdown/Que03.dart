// /lib/Dropdown/Que03.dart

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que03 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Que03State();
}

class _Que03State extends State<Que03> {
  List<String> _locations = ['A', 'B', 'C', 'D']; // Option 2
  late String _selectedLocation; // Option 2

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Center(
          child: DropdownButton(
            hint:
                Text('Please choose a location'), // Not necessary for Option 1
            value: _selectedLocation,
            onChanged: (newValue) {
              setState(() {
                _selectedLocation = newValue.toString();
              });
            },
            items: _locations.map((element) {
              return DropdownMenuItem(
                child: new Text(element),
                value: element,
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
