import 'package:flutter/material.dart';

class NotificationBadge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Icon(Icons.notifications, size: 28),
        Positioned(
          right: 0, top: 2,
          child: Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(8)),
            child: Text("3", style: TextStyle(color: Colors.white, fontSize: 12)),
          ),
        ),
      ],
    );
  }
}

