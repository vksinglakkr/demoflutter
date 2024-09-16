// ../lib/API/SimpleMethod/Que08_LoadLocalJson.dart
import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que08Local extends StatefulWidget {
  @override
  Que08LocalState createState() => Que08LocalState();
}

class Que08LocalState extends State<Que08Local> {
  final String image1 = "assets/help/API/response.jpg";
  late List data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Load local JSON file"),
      ),
      body: Container(
        child: Center(
          // Use future builder and DefaultAssetBundle to load the local JSON file
          child: FutureBuilder(
              // future: DefaultAssetBundle.of(context) //rootBundle
              future:
                  rootBundle.loadString('assets/localJson/starwars_data.json'),
              builder: (context, snapshot) {
                // Decode the JSON
                var convertedJsonData = json.decode(snapshot.data.toString());

                return ListView.builder(
                  // Build the ListView
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: <Widget>[
                          Text("Name: " + convertedJsonData[index]['name']),
                          Text("Height: " + convertedJsonData[index]['height']),
                          Text("Mass: " + convertedJsonData[index]['mass']),
                          Text("Hair Color: " +
                              convertedJsonData[index]['hair_color']),
                          Text("Skin Color: " +
                              convertedJsonData[index]['skin_color']),
                          Text("Eye Color: " +
                              convertedJsonData[index]['eye_color']),
                          Text("Birth Year: " +
                              convertedJsonData[index]['birth_year']),
                          Text("Gender: " + convertedJsonData[index]['gender'])
                        ],
                      ),
                    );
                  },
                  itemCount:
                      convertedJsonData == null ? 0 : convertedJsonData.length,
                );
              }),
        ),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      floatingActionButton: WidgetFab(),
    );
  }
}
