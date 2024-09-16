// lib/Spacer\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/other/Scaffold/Que02.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';
import 'Que01.dart';

class HomeScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Scaffold")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(Que01(), "lib/Others/Scaffold/Que01.dart", "Scaffold",
                  "assets/help/Que01.jpg", "SubTitle"),
              ButtonsCode(ScaffoldPage(), "lib/Others/Scaffold/Que02.dart",
                  "Scaffold 2", "assets/help/Que01.jpg", "SubTitle"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
