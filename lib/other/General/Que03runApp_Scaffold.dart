// lib/General\Que03runApp_Scaffold.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

void main() => runApp(
      Scaffold(
        appBar: AppBar(title: WidgetAppBar("Material App Bar")),
        body: Center(
          child: Container(
            child: Text(
              'Hello World',
              textDirection: TextDirection.ltr,
            ),
          ),
        ),
      ),
    );

//Error  should be
