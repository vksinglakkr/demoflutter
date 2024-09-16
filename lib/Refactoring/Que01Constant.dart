import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

/*
  Refactoring with a constant- What does this mean?
  
  Every time the parent widget is redrawn, all 
  the constants will also redraw their widgets,
  so you can't do any performance optimization.
*/

class Que01Constant extends StatelessWidget {
  final String video1 = "Xu92WAlf0vI";

  final containerVar = Container(
    color: Colors.red,
    height: 200.0,
    width: 200.0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Refactoring with a Constant'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Center(
        child: containerVar, //use of Constant
      ),
      floatingActionButton: WidgetFab(),
    );
  }
}
