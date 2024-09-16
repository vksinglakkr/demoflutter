// lib/TextField\Que01SingleTextField.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que01a11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que01a11> {
  final String url1 =
      "https://medium.com/flutter-community/a-deep-dive-into-flutter-textfields-f0e676aaab7a"; //final for textAlign

  final String video1 = "NL92YO9yTB0"; //final CodeX TextField complete
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("AutoFocus, \ntextAlign, Password")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Text('Input text Styling'),
                  TextField(
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.w800),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(width: 3, color: Colors.red)),
                      hintText:
                          "style: TextStyle(color: Colors.red, fontWeight: FontWeight.w800)",
                    ),
                  ),
                  Text('auto focused'),
                  TextField(
                    autofocus: false,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(width: 3, color: Colors.red)),
                      hintText: " autofocus: false",
                    ),
                  ),
                  Text('Password - obscureText,obscuringCharacter'),
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "obscureText: true",
                          ),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          obscureText: true,
                          obscuringCharacter: '#',
                          decoration: InputDecoration(
                            labelText: "obscuringCharacter: '#'",
                          ),
                        ),
                      ),
                    ],
                  ),
                  Text('textAlign'),
                  TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      labelText:
                          "textAlign: TextAlign.center (start/left/end/right/justify)",
                    ),
                  ),
                  Text('textDirection'),
                  TextField(
                    textDirection: TextDirection.rtl,
                    decoration: InputDecoration(
                      labelText: "textDirection: TextDirection.rtl",
                    ),
                  ),
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
