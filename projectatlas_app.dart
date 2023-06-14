import 'package:flutter/material.dart';
import 'package:atlas_chava_asror/screen1.dart';

class AtlasApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Atlas',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(title: 'Atlas Home Page'),
    );
  }
}