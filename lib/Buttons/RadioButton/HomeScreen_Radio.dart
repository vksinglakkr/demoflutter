// libButtonsRadioButtonHomeScreen_Radio.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Buttons/RadioButton/Que02.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';
import 'Que01RadioButton.dart';

class HomeRadio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Radio Button")),
      body: Container(
        child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(
                  Que02(),
                  "lib/Buttons/RadioButton/Que02.dart",
                  "Basic Code",
                  "assets/help/Buttons/RadioButton/1 (1).jpeg",
                  "SubTitle"),
              ButtonsCode(
                  Que01Radio11(),
                  "lib/Buttons/RadioButton/Que01RadioButton.dart",
                  "Bulb On/Off",
                  "assets/help/Buttons/RadioButton/1 (2).jpeg",
                  "SubTitle"),
            ],
          ),
        ),
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
