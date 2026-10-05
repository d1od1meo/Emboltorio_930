import 'package:emboltorio_930/component/globalappbar_component.dart';
import 'package:flutter/material.dart';

class FriendsScreen extends StatefulWidget {
  const FriendsScreen({Key? key}) : super(key: key);

  @override
  State<FriendsScreen> createState() => _FriendsScreenState();
}

class _FriendsScreenState extends State<FriendsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppBarComponent(
          title: Text(
        "Friends",
        style: TextStyle(color: Colors.yellow),
      )),
      body: Column(children: [Text("Friends Screen")]),
    );
  }
}
