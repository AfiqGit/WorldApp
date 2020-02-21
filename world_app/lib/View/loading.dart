import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:world_app/services/world_time.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  String time= 'Loading Data';

  void setupTime() async {
    WorldTime instance= WorldTime(location: 'Kuala Lumpur', url: 'Asia/Kuala_Lumpur', flag: 'malaysia.png');
    await instance.getData();
    Navigator.pushReplacementNamed(context, '/home', arguments: {
      'location': instance.location,
      'url': instance.url,
      'flag': instance.flag,
    });
  }

  @override
  void initState() {
    super.initState();
    setupTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[900],
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[800],
        elevation: 0.0,
        title: Text(
          'Current Time',
          style: TextStyle(
            fontFamily:'YatraOne',
            fontSize: 24.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0,left: 30.0, right: 30.0),
        child: Column(
          children: <Widget> [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('images/malaysia.png'),
                radius: 85.0,
              ),
            ),
            Divider(
              height: 60.5,
              color: Colors.pink[400],
              thickness: 2.0,
            ),
            Text(
              'City',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height:8.0),
            Text(
              'Kuala Lumpur',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            SizedBox(height:15.0),
            Text(
              'Time',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height:8.0),
            Text(
              '$time',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ]
        ),
      )
    );
  }
}