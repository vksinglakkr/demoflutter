// lib/ProgressIndicator_Loading\HomeScreen.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';
import 'Que01.dart';
import 'Que02.dart';
import 'package:widget_with_codeview/widget_with_codeview.dart';

class HomeProgress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Progress Indicator")),
        body: SafeArea(
            child: Container(
                child: Builder(
          builder: (context) => ListView(
            padding: EdgeInsets.all(3.0),
            children: [
              ButtonsCode(
                  Que0111(),
                  "lib/ProgressIndicator_Loading/Que01.dart",
                  "Circular Progress Indicator",
                  "assets/help/Others/Loader/1.jpeg",
                  "SubTitle"),
              ButtonsCode(
                  Que0211(),
                  "lib/ProgressIndicator_Loading/Que02.dart",
                  "FadeInImage_Loading bar",
                  "assets/help/Others/Loader/2.jpeg",
                  "SubTitle"),
            ],
          ),
        ))),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}

//lib/Others\ProgressIndicator_Loading\Que01.dart
class Que01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que0111(),
      filePath: 'lib/Others/ProgressIndicator_Loading/Que01.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Others/ProgressIndicator_Loading/Que01.dart',
    );
  }
}

class Que02 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetWithCodeView(
      child: Que0211(),
      filePath: 'lib/Others/ProgressIndicator_Loading/Que02.dart',
      codeLinkPrefix:
          'https://github.com/vksinglakkr/FlutterTutorial/blob/master/lib/Others/ProgressIndicator_Loading/Que02.dart',
    );
  }
}
