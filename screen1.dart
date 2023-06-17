import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
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
        body: Stack(
          children: [
            RiveAnimation.asset("assets/RiveAssets/ani3.riv"),
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: SizedBox(),
              ),
            ),
            const SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      SizedBox(
                        width: 300,
                        child: Column(
                          children: [
                            Text(
                              "Welcome to Atlas",
                              style: TextStyle(
                                fontSize: 100,
                                fontFamily: "BebasNeue",
                                height: 1.2,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "get started now!",
                              style: TextStyle(
                                fontSize: 40,
                                fontFamily: "BebasNeue",
                                height: 1.2,
                                color: Colors.white24,
                              ),
                            )

                          ],
                        )
                      )

                    ],
       ),
                )
            )
          ],
        ),
      );


}