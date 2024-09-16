// lib/Card\HomeScreen_Card.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Box/CheckBox/Que01.dart';
import 'package:flutter_application_1/Card/Que02DynamicCard.dart';
import 'package:flutter_application_1/Card/Que03.dart';
import 'package:flutter_application_1/Card/Que04Theme.dart';
import 'package:flutter_application_1/Card/Que05.dart';
import 'package:flutter_application_1/Card/Que06Border.dart';
import 'package:flutter_application_1/Card/Que07.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';
import 'Que01CardContainer.dart';

class HomeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Card")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(Que01Card11(), "lib/Card/Que01CardContainer.dart",
                      "Simple Card'", "assets/help/Card/1 (1).jpg", "SubTitle"),
                  ButtonsCode(Que05(), "lib/Card/Que05.dart", "Card",
                      "assets/help/Card/1 (2).jpg", "SubTitle"),
                  ButtonsCode(Que06(), "lib/Card/Que06Border.dart",
                      "Border.only", "assets/help/Card/1 (3).jpg", "SubTitle"),
                  ButtonsCode(
                      Que07(),
                      "lib/Card/Que07.dart",
                      "child: SizedBox()",
                      "assets/help/Card/1 (4).jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que02Card(),
                      "lib/Card/Que02DynamicCard.dart",
                      "Generate Card using List<String>",
                      "assets/help/Card/1 (5).jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que03(),
                      "lib/Card/Que03.dart",
                      "Different Shapes",
                      "assets/help/Card/1 (6).jpg",
                      "SubTitle"),
                  ButtonsCode(Que04(), "lib/Card/Que04Theme.dart", "Theme",
                      "assets/help/Card/1 (7).jpg", "SubTitle"),
                  ButtonsCode(Que01(), "lib/Box/CheckBox/Que01.dart",
                      "CheckBox", "assets/help/Card/1 (8).jpg", "SubTitle"),
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

// class Que01Card extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return WidgetWithCodeView(
//       child: Que01Card11(),
//       sourceFilePath: 'lib/Card/Que01CardContainer.dart',
//       codeLinkPrefix:
//           'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Card/Que01CardContainer.dart',
//     );
//   }
// }