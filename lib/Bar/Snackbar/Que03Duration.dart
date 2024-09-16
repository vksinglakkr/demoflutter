// lib/Bar\Snackbar\Que03Duration.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que03SnackBar11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Que03SnackBar11> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  void _showMessageInScaffold(String message) {
    try {
//      _scaffoldKey.currentState.showSnackBar(SnackBar(
//        content: Text(message),
//        duration: Duration(seconds: 2, milliseconds: 500),
//      ));
    } on Exception catch (e, s) {
      print(s);
    }
  }

  final String image1 = "assets/help/Bar/Snackbar/Que03.png";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(title: WidgetAppBar("Back Ground Color")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        body: Column(
          children: [
            Center(
                child: ElevatedButton(
//          textColor: Colors.white,
//          color: Colors.blue,
              child: Text('Show SnackBar'),
              onPressed: () {
                _showMessageInScaffold("Hello dear! I'm SnackBar.");
              },
            )),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }
}
