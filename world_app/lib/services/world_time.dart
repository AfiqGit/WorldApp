import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String time;
  String location;
  String url;
  String flag;

  WorldTime({this.location, this.url, this.flag});

  Future<void> getData() async {
    Response response= await get('http://worldtimeapi.org/api/timezone/$url');
    print(response.body);
    Map data= jsonDecode(response.body); //decode json format into workable data for project
    String datetime= data['datetime'];
    String offset= data['utc_offset'].substring(1,3); //substring(includeIndex, excludeIndex)
    //print(offset);

    //create datetime object
    DateTime current= DateTime.parse(datetime);
    current= current.add(Duration(hours: int.parse(offset)));
    
    //set time property
    time= current.toString();
  }
}