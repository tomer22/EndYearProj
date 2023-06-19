import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import 'choose.dart';
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
                child: const SizedBox(),
              ),
            ),
             SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      const SizedBox(
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
                      ),
                    SizedBox(
                      height: 100,
                      width: 400,
                      child: FloatingActionButton(
                        elevation: 0.0,
                        backgroundColor: Colors.redAccent,
                        onPressed: () {
                          Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>Choose()),
                          );
                        },
                        child: Icon(
                          Icons.arrow_circle_up_rounded,
                          size: 75.0,

                        ),
                      ),
                    ),
                        ],
                      ),
                    )
             )
                    ],
       ),
                );




}