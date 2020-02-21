import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  //async code example
  void getData() async { //async code is used for getting the API

    //this will code will run and block other code from running until it is done
    String username= await Future.delayed(Duration(seconds: 3), () {
      return 'user001';
    });

    //this will running second and it not blocking other code from running because it has no await
    Future.delayed(Duration(seconds: 3), () {
      return 'pass001';
    });

    print('testing');
  }

    


  @override
  void initState() { //dia akan run once when class state is called
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[900],
      appBar: AppBar(
        backgroundColor: Colors.lightBlue[800],
        elevation: 0.0,
        title: Text(
          'Choose Location',
          style: TextStyle(
            fontFamily:'YatraOne',
            fontSize: 24.0,
          ),
        ),
        centerTitle: true,
      ),
      body: Text('Choose Location'),
    );
  }
}