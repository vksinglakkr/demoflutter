// lib/Transform\Que04Transform_rotate.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que0411 extends StatefulWidget {
  @override
  _Que0411State createState() => _Que0411State();
}

class _Que0411State extends State<Que0411> {
  final String url1 = "https://www.youtube.com/watch?v=4h5q5jfkdYg";
  final String image1 = "assets/help/Transform/Que04.png";
  final String video1 = "9z_YNlRlWfA";
  double sliderVal3 = 0.0;
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
        body: Container(
          color: Colors.grey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.rotate(
                angle: sliderVal3,
                origin: Offset(sliderVal1, sliderVal2),
                alignment: _selectedAlignment,
                child: Center(
                  child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.red, Colors.blue],
                          begin: FractionalOffset.centerLeft,
                          end: FractionalOffset.centerRight,
                          tileMode: TileMode.repeated,
                        ),
                      )
                      //transform: Matrix4.rotationY(0.5),
                      //transform: Matrix4.identity(),
                      //transform: Matrix4.identity()..rotateZ(pi / 2),
                      //Random Number final random = Random();
                      //transform: Matrix4.rotationZ(random.nextInt(100).toDouble()),
                      ),
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
        Row(children: [
          Text('angle:'),
          SizedBox(
              width: 300,
              child: Slider(
                value: sliderVal3,
                min: 0.0,
                max: (360 * 3.1415927 / 180),
                divisions: 90,
                label: ((sliderVal3 * 180) / 3.1415927).toStringAsFixed(0) +
                    "(" +
                    (sliderVal3.toStringAsFixed(0)) +
                    ")",
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
              width: 100,
              child: Slider(
                value: sliderVal1,
                min: 0.0,
                max: 150.0,
                divisions: 30,
                label: sliderVal1.toStringAsFixed(1),
                onChanged: (val) {
                  setState(() {
                    sliderVal1 = val;
                  });
                },
              )),
          SizedBox(
              width: 100,
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
