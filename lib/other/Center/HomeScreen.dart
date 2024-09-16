//  \lib/Others/Center/HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/other/Center/Que01.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class HomeCenter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Center")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(
                  QueHeightWidth(),
                  "lib/Others/Center/Que01.dart",
                  "heightFactor:, widthFactor:",
                  "assets/help/Others/Center/1.png",
                  "SubTitle"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
