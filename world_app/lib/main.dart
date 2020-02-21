import 'package:flutter/material.dart';
import 'package:world_app/View/home.dart';
import 'package:world_app/View/loading.dart';
import 'package:world_app/View/choose_location.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
  },
));

