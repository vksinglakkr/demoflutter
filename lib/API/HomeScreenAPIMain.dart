//  \lib/Align\HomeScreen_Align.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/API/SimpleMethod/BasicNotes.dart';
import 'package:flutter_application_1/API/SimpleMethod/HomeScreen_API.dart';
import 'package:flutter_application_1/API/getX/HomeScreen_API.dart';
import 'package:flutter_application_1/API/models/HomeScreen_API.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class HomeMainAPI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Different approches")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ElevatedButton(
                    child: Text('Basic Notes',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => Step1Basic(),
                        )),
                  ),
                  ElevatedButton(
                    child: Text('json.decode',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => HomeAPI(),
                        )),
                  ),
                  ElevatedButton(
                    child: Text('models',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => HomeAPIModel(),
                        )),
                  ),
                  ElevatedButton(
                    child: Text('getx (pending)',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => HomeAPIgetX(),
                        )),
                  ),
                  ElevatedButton(
                    child: Text('\$.Ajex (pending)',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => HomeAPIgetX(),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
