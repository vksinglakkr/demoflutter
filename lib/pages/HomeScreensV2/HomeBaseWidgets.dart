// lib/pages\HomeScreen.dart
// HomeScreen.dart

import 'package:flutter/material.dart';
import 'package:flutter_application_1/other/Theme/mainTheme.dart';
import 'package:flutter_application_1/Bar/AppBar/HomeScreen_AppBar.dart';
import 'package:flutter_application_1/Buttons/ElevatedButton/HomeScreen_Elevated.dart';
import 'package:flutter_application_1/Container/HomeScreen_Container.dart';
import 'package:flutter_application_1/Divider/HomeScreen.dart';
import 'package:flutter_application_1/Image/HomeScreen_Image.dart';
import 'package:flutter_application_1/other/FlutterLogo/HomeScreen.dart';
import 'package:flutter_application_1/other/Placeholder/HomeScreen.dart';
import 'package:flutter_application_1/other/Scaffold/HomeScreen.dart';

import 'package:flutter_application_1/Row/HomeScreen.dart';
import 'package:flutter_application_1/Text/HomeScreen.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';
import 'package:flutter_application_1/widgets/exit-popup.dart';

class HomeBaseWidgets extends StatefulWidget {
  final Color primaryColor;
  const HomeBaseWidgets({key, required this.primaryColor});

  @override
  _HomeBaseWidgetsState createState() => _HomeBaseWidgetsState();
}

class _HomeBaseWidgetsState extends State<HomeBaseWidgets> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: WidgetAppBar("Base Widgets"),
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
                child: Text('Container',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeContainer(),
                    ))),
            ElevatedButton(
              child: Text('Row /\nColumn',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeRow(),
                  )),
            ),
            ElevatedButton(
                child: Text('Image',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeImage(),
                    ))),
            ElevatedButton(
              child: Text('Text',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeText(),
                  )),
            ),
            ElevatedButton(
                child: Text('Elevated Button (Raised)',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeElevated()));
                }),
            ElevatedButton(
              child: Text('Scaffold',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeScaffold(),
                  )),
            ),
            ElevatedButton(
                child: Text('AppBar',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeAppBar()));
                }),
            ElevatedButton(
                child: Text('FlutterLogo',
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => HomeLogo(),
                    ))),
            ElevatedButton(
              child: Text('Placeholder',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomePlaceholder(),
                  )),
            ),
            ElevatedButton(
              child: Text('Divider',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => HomeDivider(),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
