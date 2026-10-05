import 'dart:ui';

import 'package:flutter/material.dart';

class Activity1Screen extends StatefulWidget {
  const Activity1Screen({super.key});

  @override
  State<Activity1Screen> createState() => _Activity1ScreenState();
}

class _Activity1ScreenState extends State<Activity1Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Prelim Exam")),
      body: Column(
        children: [
          Text(
            "Prelim Exam",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Text("Deiondrei R. Emboltorio"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  width: 160,
                  height: 160,
                  color: Colors.blue,
                  child: Center(
                      child: Text(
                    "BOX 1",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ))),
            ],
          ),
        ],
      ),
    );
  }
}
