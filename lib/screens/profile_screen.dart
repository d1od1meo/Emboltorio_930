import 'package:emboltorio_930/component/globalappbar_component.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppBarComponent(
          title: Text(
        "Profile",
        style: TextStyle(color: Colors.black),
      )),
      body: Column(children: [Text("Profile Screen")]),
    );
  }
}
