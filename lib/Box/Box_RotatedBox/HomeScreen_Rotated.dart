// lib/Box\HomeScreen_Rotated.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Box/Box_RotatedBox/Que02Text.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';
import 'Que01.dart';

class HomeRotated extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Rotated Box")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(
                      Que01Rotated11(),
                      "lib/Box/Box_RotatedBox/Que01.dart",
                      "Rotated Box",
                      "assets/help/Box/Box_ RotatedBox/1 (1).jpeg",
                      "SubTitle"),
                  ButtonsCode(
                      Que02(),
                      "lib/Box/Box_RotatedBox/Que02Text.dart",
                      "Rotated Text",
                      "assets/help/Box/Box_ RotatedBox/1 (2).jpeg",
                      "SubTitle"),
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
