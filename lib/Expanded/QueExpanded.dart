// lib/TextField\Que08Controller.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';
import 'package:url_launcher/url_launcher.dart';

class QueExpanded11 extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<QueExpanded11> {
  final String video1 = "rgIcf9YfSOs"; //final

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar:
            AppBar(title: WidgetAppBar("Handle changes \nusing Controller?")),
        body: InkWell(
            // ignore: deprecated_member_use
            onTap: () => launch("https://kurukshetra.gov.in"),
            child: Text("RetroPortal Studio")),
      ),
    );
  }
}
