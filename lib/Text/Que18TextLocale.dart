// lib/Text\Que18TextLocale.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que18Locale extends StatelessWidget {
  final String image1 = "assets/help/Text/Que18.png";

  @override
  Widget build(BuildContext context) {
    TextStyle selectedStyle = TextStyle(color: Theme.of(context).hintColor);

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("")),
        bottomNavigationBar:
            QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                  title: Text(
                'العربية', // which means Arabic
                style: _getLanguageCode(context) == 'ar' ? selectedStyle : null,
              )),
              ListTile(
                title: Text(
                  'English',
                  style:
                      _getLanguageCode(context) == 'en' ? selectedStyle : null,
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            Center(child: Text('Managing your locale')),
          ],
        ),
        floatingActionButton: WidgetFab(),
      ),
    );
  }

  _getLanguageCode(BuildContext context) {
    return Localizations.localeOf(context).languageCode;
  }
}
