import 'package:flutter/material.dart';
import 'package:emboltorio_930/component/globalappbar_component.dart';
import 'package:emboltorio_930/component/notification_component.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  final List<Map<String, dynamic>> notifications = [
    {
      "username": "John Doe",
      "message": "liked your post.",
      "time": "5 minutes ago",
      "type": "like",
      "read": false,
    },
    {
      "username": "Jane Smith",
      "message": "commented on your post.",
      "time": "10 minutes ago",
      "type": "comment",
      "read": false,
    },
    {
      "username": "Michael Cruz",
      "message": "sent you a friend request.",
      "time": "20 minutes ago",
      "type": "friend_request",
      "read": true,
    },
    {
      "username": "Sarah Williams",
      "message": "shared your post.",
      "time": "1 hour ago",
      "type": "share",
      "read": true,
    },
    {
      "username": "Alex Santos",
      "message": "mentioned you in a comment.",
      "time": "2 hours ago",
      "type": "mention",
      "read": true,
    },
    {
      "username": "Albert Einstein",
      "message": "shared your post.",
      "time": "3 hours ago",
      "type": "shared",
      "read": true,
    },
    {
      "username": "Fein Green",
      "message": "started following you.",
      "time": "18 hours ago",
      "type": "follow",
      "read": true,
    },
    {
      "username": "Hollie Pearl",
      "message": "shared your post.",
      "time": "13 hours ago",
      "type": "shared",
      "read": true,
    },
    {
      "username": "Tom Blue",
      "message": "mentioned you in a post.",
      "time": "1 min ago",
      "type": "mention",
      "read": true,
    },
    {
      "username": "Armstrong Sen",
      "message": "shared your post.",
      "time": "40 min ago",
      "type": "share",
      "read": true,
    },
    {
      "username": "Amy Lin",
      "message": "shared your post.",
      "time": "2 hours ago",
      "type": "share",
      "read": true,
    },
    {
      "username": "Ben Mo",
      "message": "commented on your post.",
      "time": "50 min ago",
      "type": "comment",
      "read": true,
    },
    {
      "username": "Armstrong Sen",
      "message": "sent you a friend request.",
      "time": "3 min ago",
      "type": "friend_request",
      "read": true,
    },
  ];

  IconData _iconForType(String? type) {
    switch (type) {
      case "like":
        return Icons.thumb_up_sharp;

      case "comment":
        return Icons.comment;

      case "friend_request":
        return Icons.person_add;

      case "share":
        return Icons.share;

      case "mention":
        return Icons.alternate_email;

      default:
        return Icons.notifications;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GlobalAppBarComponent(),
      body: ListView.builder(
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];

          return NotificationComponent(
            username: notification["username"],
            message: notification["message"],
            time: notification["time"],
            icon: _iconForType(notification["type"]),
            selected: !(notification["read"] as bool? ?? false),
          );
        },
      ),
    );
  }
}
