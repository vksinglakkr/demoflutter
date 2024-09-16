//  \lib/Others/Future/HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/other/Future/Que01.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class HomeFuture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Divider")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(
                  Que01Future(),
                  "lib/Others/Future/Que01.dart",
                  "Demonstrate FutureBuilder",
                  "assets/help/Others/General/f1.jpeg",
                  "SubTitle"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
