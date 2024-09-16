import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que14 extends StatefulWidget {
  @override
  _Que14State createState() => _Que14State();
}

class _Que14State extends State<Que14> {
  final String url1 =
      "https://www.nstack.in/blog/flutter-everything-you-need-to-know-dropdown/#dropdown-example-2"; //Que14
  final List<String> country = ['India', 'Nepal', 'Bhutan', 'Sri lanka'];
  late String selectedCountry;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Example 3'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: Center(
        child: DropdownButton<String>(
          value: selectedCountry,
          hint: Text('Country'),
          items: country
              .map(
                (element) => DropdownMenuItem(
                  value: element,
                  child: Text(element),
                ),
              )
              .toList(),
          onChanged: (xyz) {
            print('You selected "$xyz"');
            setState(() {
              selectedCountry = xyz!;
            });
          },
        ),
      ),
    );
  }
}
