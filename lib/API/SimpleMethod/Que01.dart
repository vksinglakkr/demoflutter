// ../lib/API/SimpleMethod/Que01.dart
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert'; //Step 2

//import 'dart:convert'; // to convert the http response in JSON format
class Que01 extends StatefulWidget {
  @override
  _Que01State createState() => _Que01State();
}

class _Que01State extends State<Que01> {
  final String image1 = "assets/help/API/response.jpg";
  final String video1 = "o0-kHH5-7zE";
  late Map data; //Step 2
  late List userData; //Step 2

  Future getData() async {
    http.Response response =
        await http.get(Uri.parse("https://reqres.in/api/users?page2"));
    // debugPrint(response.body); Step 1
    data = json.decode(response.body);
    setState(() {
      userData = data["data"];
    });
    //debugPrint(userData.toString()); //Step 2
    //See the output in DEBUG CONSOLE we get in STEP 1 & STEP 2
    //in STEP 2 we only get the data
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: WidgetAppBar("https://reqres.in/api/users?page2"),
      ),
      body: ListView.builder(
        itemCount: userData == null ? 0 : userData.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(userData[index]["avatar"]),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      " ${userData[index]["first_name"]} ${userData[index]["last_name"]}"),
                )
              ],
            ),
          ));
        },
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      floatingActionButton: WidgetFab(),
    );
  }
}
