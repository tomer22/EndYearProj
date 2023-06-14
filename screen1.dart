import 'package:flutter/material.dart';
//import other files or 'pages' from here

class HomePage extends StatefulWidget {
  HomePage({required this.title});

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) =>
      Scaffold(
          body: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/atlasbackground.jpg"), //will be replaced with RIVE file once polished
                    fit: BoxFit.cover
                ),
              )
          )
      );
}