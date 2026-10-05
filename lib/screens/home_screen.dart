import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "Hello World!",
          style: TextStyle(color: Colors.blue),
        ),
        SizedBox(height: 40),
        Text(
          "How are you ?",
          style: TextStyle(color: Colors.red),
        ),
        Row(
          children: [
            Text("Yo ws gud Homes",
                style: TextStyle(
                    color: Colors.purple, fontWeight: FontWeight.bold)),
            SizedBox(
              width: 50,
            ),
            Text("Wazuzp, Cuh", style: TextStyle(color: Colors.green)),
          ],
        )
      ],
    ));
  }
}
