// lib/Text\Que15DefaulttextStyle.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que15Default extends StatelessWidget {
  final String image1 = "assets/help/Text/Que15.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Text => DefaultTextStyle")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DefaultTextStyle(
                  style: TextStyle(fontSize: 36, color: Colors.blue),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'The first text',
                        ),
                        const Text(
                          'The second text',
                          style: TextStyle(fontSize: 24),
                        ),
                        const Text(
                          'The third text',
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  ),
                ),
                const Text(
                  'The fourth text',
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
