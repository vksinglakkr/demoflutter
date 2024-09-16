// lib/Card\HomeScreen_Card.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Chip/Que02DynamicChip.dart';
import 'package:flutter_application_1/Chip/Que03.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';
import 'Que01DynamicChip.dart';

class HomeChip extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Chip")),
        body: SafeArea(
          child: Container(
            child: Builder(
              builder: (context) => ListView(
                padding: EdgeInsets.all(3.0),
                children: [
                  ButtonsCode(
                      Que01Chip(),
                      "lib/Chip/Que01DynamicChip.dart",
                      "Generate Chip using List<String>",
                      "assets/help/Chip/1(1).jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que02(),
                      "lib/Chip/Que02DynamicChip.dart",
                      "Generate Chip using List.generate",
                      "assets/help/Chip/1 (2).jpg",
                      "SubTitle"),
                  ButtonsCode(
                      Que03(),
                      "lib/Chip/Que03.dart",
                      "Generate Chip (Basic)",
                      "assets/help/Chip/1 (3).jpg",
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