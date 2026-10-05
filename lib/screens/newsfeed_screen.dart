import 'package:emboltorio_930/component/globalappbar_component.dart';
import 'package:emboltorio_930/component/newsfeedcomponent.dart';
import 'package:flutter/material.dart';

class NewsfeedScreen extends StatefulWidget {
  const NewsfeedScreen({super.key});

  @override
  State<NewsfeedScreen> createState() => _NewsfeedScreenState();
}

class _NewsfeedScreenState extends State<NewsfeedScreen> {
  final List<Map<String, String>> newsfeed = [
    {
      "username": "John Doe",
      "timeposted": "2 hours ago",
      "status": "Having a great day!",
      "likes": "120",
      "comments": "25",
      "shares": "10",
    },
    {
      "username": "Jane Smith",
      "timeposted": "4 hours ago",
      "status": "Learning Flutter is fun!",
      "likes": "250",
      "comments": "40",
      "shares": "15",
    },
    {
      "username": "Michael Cruz",
      "timeposted": "20 hours ago",
      "status": "Working on my new project.",
      "likes": "89",
      "comments": "12",
      "shares": "4",
    },
    {
      "username": "Alex Santos",
      "timeposted": "7 hours ago",
      "status": "Flutter development today!",
      "likes": "300",
      "comments": "50",
      "shares": "20",
    },
    {
      "username": "John Reyes",
      "timeposted": "45 minutes ago",
      "status": "Debugging null safety errors all night",
      "likes": "128",
      "comments": "19",
      "shares": "5",
    },
    {
      "username": "Ella Fernandez",
      "timeposted": "1 day ago",
      "status": "Learning state management with Riverpod!",
      "likes": "890",
      "comments": "132",
      "shares": "64",
    },
    {
      "username": "Carlo Mendoza",
      "timeposted": "10 minutes ago",
      "status": "Coffee + Code = Productive morning",
      "likes": "45",
      "comments": "7",
      "shares": "2",
    },
    {
      "username": "Nina Lopez",
      "timeposted": "5 hours ago",
      "status": "Finally fixed that layout overflow bug!",
      "likes": "670",
      "comments": "95",
      "shares": "41",
    },
    {
      "username": "Miguel Torres",
      "timeposted": "3 days ago",
      "status": "Exploring Firebase Authentication for my new project.",
      "likes": "210",
      "comments": "33",
      "shares": "12",
    },
    {
      "username": "Sophia Bautista",
      "timeposted": "30 minutes ago",
      "status": "Custom animations in Flutter are so satisfying to build!",
      "likes": "1024",
      "comments": "201",
      "shares": "150",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppBarComponent(),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: newsfeed.length,
        itemBuilder: (context, index) {
          final post = newsfeed[index];

          return Newsfeedcomponent(
              username: post["username"],
              status: post["status"],
              numberoflikes: post["likes"],
              numberofcomments: post["comments"],
              numberofshares: post["shares"],
              timeposted: post["timeposted"]);
        },
      ),
    );
  }
}
