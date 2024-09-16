// lib/Transform\Que02Transform_scale.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que0211 extends StatefulWidget {
  @override
  _Que0211State createState() => _Que0211State();
}

class _Que0211State extends State<Que0211> {
  final String url1 = "https://www.youtube.com/watch?v=4h5q5jfkdYg";
  final String image1 = "assets/help/Transform/Que02.png";
  final String video1 = "9z_YNlRlWfA";
  double sliderVal3 = 1.0;
  double sliderVal1 = 0.0;
  double sliderVal2 = 0.0;
  final List<Alignment> _dropdownAlignment = [
    Alignment.topCenter,
    Alignment.topLeft,
    Alignment.topRight,
    Alignment.center,
    Alignment.centerLeft,
    Alignment.centerRight,
    Alignment.bottomCenter,
    Alignment.bottomLeft,
    Alignment.bottomRight,
  ];
  Alignment _selectedAlignment = Alignment.center;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: WidgetAppBar("Scale")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.scale(
              scale: sliderVal3,
              alignment: _selectedAlignment,
              origin: Offset(sliderVal1, sliderVal2),
              child: Center(
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.red,
                ),
              ),
            ),
          ],
        ),
        floatingActionButton: WidgetFab(),
        bottomNavigationBar: _getBottomBar(),
      ),
    );
  }

  Widget _getBottomBar() {
    return Material(
      color: Theme.of(context).primaryColorLight,
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        Row(children: [
          Text('scale:'),
          SizedBox(
              width: 160,
              child: Slider(
                value: sliderVal3,
                min: 0.3,
                max: 1.5,
                divisions: 10,
                label: sliderVal3.toStringAsFixed(1),
                onChanged: (val) {
                  setState(() {
                    sliderVal3 = val;
                  });
                },
              )),
        ]),
        Row(children: [
          Text("origin: Offset(x,y)"),
          SizedBox(
              width: 110,
              child: Slider(
                value: sliderVal1,
                min: 0.0,
                max: 150.0,
                divisions: 10,
                label: sliderVal1.toStringAsFixed(1),
                onChanged: (val) {
                  setState(() {
                    sliderVal1 = val;
                  });
                },
              )),
          SizedBox(
              width: 110,
              child: Slider(
                value: sliderVal2,
                min: 0.0,
                max: 150.0,
                divisions: 10,
                label: sliderVal2.toStringAsFixed(1),
                onChanged: (val) {
                  setState(() {
                    sliderVal2 = val;
                  });
                },
              )),
        ]),
        ListTile(
          title: const Text('alignment:'),
          trailing: DropdownButton(
            hint: Text('Select ...'),
            items: _dropdownAlignment
                .map((element) => DropdownMenuItem(
                      child: Center(
                        child: Text(element.toString()),
                      ),
                      value: element,
                    ))
                .toList(),
            onChanged: (Alignment? value) {
              setState(() {
                _selectedAlignment = value!;
              });
            },
            isExpanded: false,
            value: _selectedAlignment,
          ),
        ),
      ]),
    );
  }
}
