import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Dropdown/post_office.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_application_1/pages/BottomNavigationBar.dart';

class Que17 extends StatefulWidget {
  @override
  _Que17State createState() => _Que17State();
}

class _Que17State extends State<Que17> {
  final String url1 =
      "https://www.nstack.in/blog/multi-level-dropdown-in-a-flutter-part-2/"; //Que15
  final String baseURL = "https://pin-code-api.herokuapp.com";

  late PostOffice selectedState;
  late PostOffice selectedDistrict;

  List<PostOffice> states = [];
  List<PostOffice> districts = [];

  @override
  void initState() {
    super.initState();
    // On Page Load Get all the states from the server
    String endpoint = "$baseURL/api/pin";
    listState(endpoint).then((List<PostOffice> value) {
      setState(() {
        states = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Network Dropdown'),
      ),
      bottomNavigationBar:
          QueBottom(urlName: url1, imageName: image1, videoUrlId: video1),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: [
          // State Dropdown
          DropdownButton<PostOffice>(
            hint: Text('State'),
            value: selectedState,
            isExpanded: true,
            items: states.map((PostOffice postOffice) {
              return DropdownMenuItem<PostOffice>(
                value: postOffice,
                child: Text(postOffice.state),
              );
            }).toList(),
            onChanged: onStateChange,
          ),
          // State Dropdown Ends here
          // Districts Dropdown
          DropdownButton<PostOffice>(
            hint: Text('District'),
            value: selectedDistrict,
            isExpanded: true,
            items: districts.map((PostOffice postOffice) {
              return DropdownMenuItem<PostOffice>(
                value: postOffice,
                child: Text(postOffice.districtsName),
              );
            }).toList(),
            onChanged: onDistrictChange,
          ),
          // Districts Dropdown Ends here
        ],
      ),
    );
  }

  void onStateChange(state) {
    setState(() {
      selectedState = state;
      districts = [];
      selectedDistrict = 'null' as PostOffice;
    });
    String endpoint = "$baseURL/api/pin/${selectedState.state}";
    listState(endpoint).then((List<PostOffice> value) {
      setState(() {
        districts = value;
      });
    });
  }

  void onDistrictChange(district) {
    setState(() {
      selectedDistrict = district;
    });
  }

  Future<List<PostOffice>> listState(String endpoint) async {
    http.Response response = await http.get(Uri.parse(endpoint));
    String body = response.body;
    Map<String, dynamic> jsonResponse = json.decode(body);
    List data = jsonResponse['data'];
    return data.map((e) => PostOffice.fromJson(e)).toList();
  }
}
