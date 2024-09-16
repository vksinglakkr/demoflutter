// lib/Bar\HomeScreen_Bar.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Bar/AppBar/HomeScreen_AppBar.dart';
import 'package:flutter_application_1/Bar/BottomNavigationBar/HomeScreen_Bottom.dart';
import 'package:flutter_application_1/Bar/ButtonBar/HomeScreen_ButtonBar.dart';
import 'package:flutter_application_1/Bar/Navigationbar/HomeScreen_Navigation.dart';
import 'package:flutter_application_1/Bar/Snackbar/HomeScreen_Snack.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class HomeBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const WidgetAppBar("Bar")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  Container(
                    margin: EdgeInsets.all(2),
                    height: 32,
                    child: ElevatedButton(
                        child: Text('AppBar',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeAppBar()));
                        }),
                  ),
                  Container(
                    margin: EdgeInsets.all(2),
                    height: 32,
                    child: ElevatedButton(
                        child: const Text('Bottom Navigation Bar',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
//                      color: Colors.orangeAccent,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeBottom()));
                        }),
                  ),
                  Container(
                    margin: EdgeInsets.all(2),
                    height: 32,
                    child: ElevatedButton(
                        child: Text('Navigation Bar',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
//                      color: Colors.orangeAccent,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeNavigation()));
                        }),
                  ),
                  Container(
                    margin: EdgeInsets.all(2),
                    height: 32,
                    child: ElevatedButton(
                        child: Text('Snack Bar',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
//                      color: Colors.orangeAccent,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeSnack()));
                        }),
                  ),
                  Container(
                    margin: EdgeInsets.all(2),
                    height: 32,
                    child: ElevatedButton(
                        child: Text('Button Bar',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
//                      color: Colors.orangeAccent,
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeButtonBar()));
                        }),
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
