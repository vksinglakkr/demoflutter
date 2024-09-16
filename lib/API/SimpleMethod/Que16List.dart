//lib\API\SimpleMethod\Que16List.dart

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Que16 extends StatefulWidget {
  @override
  _Que16State createState() => _Que16State();
}

class _Que16State extends State<Que16> {
  final String image1 = "assets/help/API/response.jpg";

  final String video1 = "1put849Lhqg"; // best video for Que16

  late Map listResponse;
  late List listBorder;

  Future fetchData() async {
    http.Response response;
    response =
        await http.get(Uri.parse('https://restcountries.eu/rest/v2/all'));
    if (response.statusCode == 200) {
      setState(() {
        listResponse = json.decode(response.body);
        listBorder = listResponse['borders'];
      });
    }
  }

  @override
  void initState() {
    fetchData();
    debugPrint(listResponse.toString());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fetch Data from Internet'),
      ),
      body: listResponse == null
          ? Center(child: CircularProgressIndicator())
          : SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  //                Text(listResponse.toString()),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            Text(
                              listResponse[index]['name'].toString(),
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              listResponse[index]['capital'],
                              style: TextStyle(
                                fontSize: 18,
                              ),
                            ),
                            Divider(height: 10, color: Colors.black),
                          ],
                        ),
                      );
                    },
                    itemCount: listResponse == null ? 0 : listResponse.length,
                  )
                ],
              ),
            ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      floatingActionButton: WidgetFab(),
    );
  }
}
