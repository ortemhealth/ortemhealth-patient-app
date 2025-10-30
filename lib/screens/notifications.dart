import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: Call NotificationService API
    return Scaffold(
      appBar: AppBar(title: Text("Notifications")),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Appointment tomorrow with Dr. Amit"),
            subtitle: Text("09:30 AM - Don't forget!"),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Lab Results Ready"),
            subtitle: Text("Check your health records."),
          ),
        ],
      ),
    );
  }
}

