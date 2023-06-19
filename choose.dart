import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screen1.dart';
import 'commquiz.dart';

class Choose extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/Images/choose2.jpg"),
          fit: BoxFit.cover,
        ),
      ),
    ),
    floatingActionButton: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 170.0),
          child: FloatingActionButton(
            elevation: 10.0,
            backgroundColor: CupertinoColors.activeBlue,
            onPressed: () {
              Navigator.push(context,
                MaterialPageRoute(builder: (context)=>MultipleChoiceQuestion()),
              );
            },
            child: Icon(Icons.arrow_circle_right_sharp),
          ),
        ),
        FloatingActionButton(
          elevation: 10.0,
          backgroundColor: CupertinoColors.activeBlue,
          onPressed: () {
          },
          child: Icon(Icons.arrow_circle_right_sharp),
        ),
      ],
    ),
  );
}
