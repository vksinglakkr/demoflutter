// /lib/Row/Que01Basic.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

// Inspired by bizz84's layout demo:
// https://github.com/bizz84/layout-demo-flutter
class Que01Basic extends StatefulWidget {
  @override
  _Que01BasicState createState() => _Que01BasicState();
}

class _Que01BasicState extends State<Que01Basic> {
  static const kElements = <Widget>[
    Icon(
      Icons.access_alarm,
      size: 50,
    ),
    Icon(
      Icons.account_circle,
      size: 70,
    ),
    Icon(
      Icons.save,
      size: 90,
    ),
  ];

  bool _isRow = true;
  MainAxisSize _mainAxisSize = MainAxisSize.max;
  MainAxisAlignment _mainAxisAlignment = MainAxisAlignment.start;
  CrossAxisAlignment _crossAxisAlignment = CrossAxisAlignment.start;

  @override
  Widget build(BuildContext context) {
    final _appbarButtons = _getBottomBar();
    return Scaffold(
      appBar: AppBar(title: WidgetAppBar("Properties Ex.1")),
      body: _buildBody(),
      bottomNavigationBar: _appbarButtons,
      floatingActionButton: WidgetFab(),
    );
  }

  Widget _buildBody() => Container(
        margin: EdgeInsets.all(10),
        color: Colors.grey.shade400,
        child: _isRow
            ? Row(
                mainAxisAlignment: _mainAxisAlignment,
                crossAxisAlignment: _crossAxisAlignment,
                mainAxisSize: _mainAxisSize,
                children: kElements,
              )
            : Column(
                mainAxisAlignment: _mainAxisAlignment,
                crossAxisAlignment: _crossAxisAlignment,
                mainAxisSize: _mainAxisSize,
                children: kElements,
              ),
      );

  Widget _getBottomBar() {
    return Material(
      color: Theme.of(context).primaryColorLight,
      child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        Row(
          children: <Widget>[
            Row(
              children: <Widget>[
                Radio<bool>(
                    value: true,
                    groupValue: this._isRow,
                    onChanged: (bool? value) {
                      setState(() => this._isRow = value!);
                    }),
                const Text('Row'),
              ],
            ),
            Row(
              children: <Widget>[
                Radio<bool>(
                    value: false,
                    groupValue: this._isRow,
                    onChanged: (bool? value) {
                      setState(() => this._isRow = value!);
                    }),
                const Text('Column'),
              ],
            ),
          ],
        ),

        // CustMainSizeAxis(
        //     changevalue: MainAxisSize.values,
        //     defultvalue: _mainAxisSize,
        //     textpro: "mainAxisSize",
        //     onValueChanged: (value) {
        //       setState(() {
        //         _mainAxisSize = value;
        //       });
        //     }),
        // ListTile(
        //   title: const Text('mainAxisSize:'),
        //   trailing: DropdownButton<MainAxisSize>(
        //     value: _mainAxisSize,
        //     onChanged: (MainAxisSize newVal) {
        //       if (newVal != null) {
        //         setState(() => this._mainAxisSize = newVal);
        //       }
        //     },
        //     items: MainAxisSize.values
        //         .map((MainAxisSize val) => DropdownMenuItem(
        //               value: val,
        //               child: Text(
        //                   val.toString().substring('MainAxisSize.'.length)),
        //             ))
        //         .toList(),
        //   ),
        // ),

        CustomValues(
            datatype: MainAxisAlignment.values,
            defaultVal: _mainAxisAlignment,
            propText: "main:",
            onValueChanged: (value) {
              setState(() {
                _mainAxisAlignment = value;
              });
            }),

        // ListTile(
        //   title: const Text('mainAxisAlignment:'),
        //   trailing:
        //  DropdownButton<MainAxisAlignment>(
        //   value: _mainAxisAlignment,
        //   onChanged: (MainAxisAlignment newVal) {
        //     if (newVal != null) {
        //       setState(() => this._mainAxisAlignment = newVal);
        //     }
        //   },
        //   items: MainAxisAlignment.values
        //       .map((MainAxisAlignment val) => DropdownMenuItem(
        //             value: val,
        //             child: Text(val
        //                 .toString()
        //                 .substring('MainAxisAlignment.'.length)),
        //           ))
        //       .toList(),
        // ),

        ListTile(
          title: const Text('crossAxisAlignment:'),
          trailing: DropdownButton<CrossAxisAlignment>(
            value: _crossAxisAlignment,
            onChanged: (CrossAxisAlignment? newVal) {
              if (newVal != null) {
                setState(() => this._crossAxisAlignment = newVal);
              }
            },
            items: CrossAxisAlignment.values
                .map((CrossAxisAlignment val) => DropdownMenuItem(
                      value: val,
                      child: Text(val
                          .toString()
                          .substring('CrossAxisAlignment.'.length)),
                    ))
                .toList(),
          ),
        ),
      ]),
    );
  }
}
