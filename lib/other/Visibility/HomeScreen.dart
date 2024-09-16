// lib/Visibility/HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

import 'Que01CustomContainer_Visibility.dart';

class HomeVisibility extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Visibility")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(
                      Que0111(),
                      "lib/Others/Visibility/Que01CustomContainer_Visibility.dart",
                      "How to set Visibility with Space Management.",
                      "assets/help/Others/Visibility/1 (1).jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que0111(),
                      "lib/Others/Visibility/Que01CustomContainer_Visibility.dart",
                      "How to set Visibility of a Widget with Widget Visibility. But by this method we can not set visibility of Item of Bottom Navigationbar. for this we have to use if statement",
                      "assets/help/Others/Visibility/1 (2).jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que0111(),
                      "lib/Others/Visibility/Que01CustomContainer_Visibility.dart",
                      "How to set Visibility of a Widget with if statement",
                      "assets/help/Others/Visibility/1 (3).jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que0111(),
                      "lib/Others/Visibility/Que01CustomContainer_Visibility.dart",
                      "How to toggle/visibility of properties of a widget e.g. Textdata, Buttons,Icon,Color etc.",
                      "assets/help/Others/Visibility/1 (4).jpg",
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
