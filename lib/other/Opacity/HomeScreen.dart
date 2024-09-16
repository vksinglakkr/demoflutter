// lib/Opacity\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';
import 'Que01ContainerOpacityGesterDetector.dart';

class HomeOpacity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Opacity")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(
                  Que0111(),
                  "lib/Others/Opacity/Que01ContainerOpacityGesterDetector.dart",
                  "Opacity of Container",
                  "assets/help/Others/Opacity/1.jpg",
                  "SubTitle"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
