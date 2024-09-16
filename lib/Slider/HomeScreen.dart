// lib/Slider\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Slider/Que02.dart';
import 'package:flutter_application_1/Slider/Que03.dart';
import 'package:flutter_application_1/Slider/Que04.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';
import 'Que01.dart';

class HomeSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Slider")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(Que02(), "lib/Slider/Que02.dart", "Slider Basic Code",
                  "assets/help/Slider/1.jpeg", "SubTitle"),
              ButtonsCode(
                  Que0111(),
                  "lib/Slider/Que01.dart",
                  "Assignment: Slider to Transform Container",
                  "assets/help/Slider/2.jpeg",
                  "SubTitle"),
              ButtonsCode(Que04Slider(), "lib/Slider/Que04.dart", "Slider Ex3",
                  "assets/help/Slider/3.jpeg", "SubTitle"),
              ButtonsCode(Que03Slider(), "lib/Slider/Que03.dart",
                  "Range Slider", "assets/help/Slider/4.jpeg", "SubTitle"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
