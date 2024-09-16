// lib/Transform\Que03Transform_skew.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que0311 extends StatefulWidget {
  @override
  _Que0311State createState() => _Que0311State();
}

class _Que0311State extends State<Que0311> {
  double sliderVal1 = 0.0;
  double sliderVal2 = 0.0;
  double sliderVal3 = 0.0;
  double sliderVal4 = 0.0;
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
        appBar: AppBar(title: WidgetAppBar("Skew")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform(
//            transform: Matrix4.skewY(10),
//            transform: Matrix4.skewX(10),
                transform: Matrix4.skew(sliderVal1, sliderVal2),
                alignment: _selectedAlignment,
                origin: Offset(sliderVal3, sliderVal4),
                child: Container(
                  height: 150.0,
                  width: 150.0,
                  color: Colors.red,
                ),
              ),
            ],
          ),
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
        Text("transform: Matrix4.skew('x,y')"),
        Row(children: [
          SizedBox(
              width: 180,
              child: Slider(
                value: sliderVal1,
                min: -1.0,
                max: 1.0,
                divisions: 30,
                label: sliderVal1.toStringAsFixed(1),
                onChanged: (val) {
                  setState(() {
                    sliderVal1 = val;
                  });
                },
              )),
          SizedBox(
              width: 180,
              child: Slider(
                value: sliderVal2,
                min: -1.0,
                max: 1.0,
                divisions: 30,
                label: sliderVal2.toStringAsFixed(1),
                onChanged: (val) {
                  setState(() {
                    sliderVal2 = val;
                  });
                },
              )),
        ]),
        Row(children: [
          Text("origin: Offset(a,b)"),
          SizedBox(
              width: 110,
              child: Slider(
                value: sliderVal3,
                min: 0.0,
                max: 150.0,
                divisions: 10,
                label: sliderVal3.toStringAsFixed(1),
                onChanged: (val) {
                  setState(() {
                    sliderVal3 = val;
                  });
                },
              )),
          SizedBox(
              width: 110,
              child: Slider(
                value: sliderVal4,
                min: 0.0,
                max: 150.0,
                divisions: 10,
                label: sliderVal4.toStringAsFixed(1),
                onChanged: (val) {
                  setState(() {
                    sliderVal4 = val;
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
