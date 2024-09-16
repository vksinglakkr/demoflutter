// lib/InkWell\HomeScreen.dart
import 'package:flutter/material.dart';
// hema comment
// import 'package:flutter_application_1/Container/Que33ContainerButton.dart';
import 'package:flutter_application_1/other/InkWell/Que03CallFunction.dart';
import 'package:flutter_application_1/other/InkWell/Que04InkWell.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';
import '../InkWell/Que02ClickonTextToggle.dart';
import 'Que01ClickonText.dart';

class HomeInkWell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("InkWell")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(
                  Que01InkWell11(),
                  "lib/other/InkWell/Que01ClickonText.dart",
                  "InkWell (on Click Change text)",
                  "assets/help/Others/InkWell/Que01.png",
                  //"assets/help/Que01.jpg",
                  "SubTitle"),
              ButtonsCode(
                  Que02InkWell11(),
                  "lib/other/InkWell/Que02ClickonTextToggle.dart",
                  "InkWell (on click Toggle text)",
                  "assets/help/Others/InkWell/Que01.png",
                  "SubTitle"),
              ButtonsCode(
                  Que03InkWell11(),
                  "lib/other/InkWell/Que03CallFunction.dart",
                  "How to pass Function onTap",
                  "assets/help/Others/InkWell/Que01.png",
                  "SubTitle"),
              ButtonsCode(
                  Que04InkWell11(),
                  "lib/other/InkWell/Que04Inkwell.dart",
                  "Material Touch ripple-Text, Snackbar,Inkwell",
                  "assets/help/Others/InkWell/Que01.png",
                  "SubTitle"),
              // hema comment
              // ButtonsCode(
              //     Que33Container(),
              //     "lib/Container/Que33ContainerButton.dart",
              //     "Clickable Button-Container,InkWell,snackbar",
              //     "assets/help/Others/InkWell/Que01.png",
              //     "SubTitle"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
