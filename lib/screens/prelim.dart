import 'dart:ui';

import 'package:flutter/material.dart';

class PrelimScreen extends StatefulWidget {
  const PrelimScreen({super.key});

  @override
  State<PrelimScreen> createState() => _PrelimScreenState();
}

class _PrelimScreenState extends State<PrelimScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Prelim Exam")),
      body: Column(
        children: [
          const Text(
            "Prelim Exam",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          const Text("Deiondrei R. Emboltorio"),
          const SizedBox(height: 20),

          // First row
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 160,
                height: 160,
                color: Colors.blue,
                child: const Center(
                  child: Text(
                    "BOX 1",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          // Second row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 160,
                height: 160,
                color: Colors.green,
                child: const Center(
                  child: Text(
                    "BOX 2",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Container(
                width: 160,
                height: 160,
                color: Colors.orange,
                child: const Center(
                  child: Text(
                    "BOX 3",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
