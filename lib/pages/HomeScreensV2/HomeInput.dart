// lib/pages\HomeScreen.dart
// HomeScreen.

// pta nhi comment all code

import 'package:flutter/material.dart';
import 'package:flutter_application_1/other/Theme/mainTheme.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';
import 'package:flutter_application_1/API/HomeScreenAPIMain.dart';
import 'package:flutter_application_1/Box/CheckBox/HomeScreen_check.dart';
import 'package:flutter_application_1/Buttons/RadioButton/HomeScreen_Radio.dart';
import 'package:flutter_application_1/other/Theme/mainTheme.dart';
import 'package:flutter_application_1/Slider/HomeScreen.dart';
import 'package:flutter_application_1/Switch/HomeScreen.dart';
import 'package:flutter_application_1/TextField/HomeScreen.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';
import 'package:flutter_application_1/pages/HomePending.dart';
import 'package:flutter_application_1/widgets/exit-popup.dart';

class HomeInput extends StatefulWidget {
  final Color primaryColor;
  const HomeInput({key, required this.primaryColor});

  @override
  _HomeInputState createState() => _HomeInputState();
}

class _HomeInputState extends State<HomeInput> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: WidgetAppBar("Input & Selection"),
          actions: [
            PopupMenuButton(
                itemBuilder: (BuildContext varPrefer) => [
                      PopupMenuItem(
                          child: IconButton(
                              icon: const Icon(Icons.settings),
                              color: Colors.black,
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (BuildContext context) =>
                                        MainTheme(),
                                  )))),
                      PopupMenuItem(
                          child: IconButton(
                        icon: const Icon(Icons.exit_to_app),
                        color: Colors.black,
                        onPressed: () => showExitPopup(context),
                      )),
                    ])
          ],
        ),
        body: GridView.count(
          padding: EdgeInsets.all(6),
          crossAxisCount: 2,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          childAspectRatio: 4.1,
          children: [
            ElevatedButton(
                child: Text('TextField',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeTextField(),
                    ))),
            ElevatedButton(
              child: Text('CheckBox',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeCheck(),
                  )),
            ),
            ElevatedButton(
                child: Text('Radio',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeRadio(),
                    ))),
            ElevatedButton(
              child: Text('Switch',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeSwitch(),
                  )),
            ),
            ElevatedButton(
                child: Text('Slider',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeSlider()));
                }),
            ElevatedButton(
              child: Text('Date & TimePicker',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomePending(),
                  )),
            ),
            ElevatedButton(
              child: Text('API',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeMainAPI(),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
