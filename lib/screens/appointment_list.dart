import 'package:flutter/material.dart';

class AppointmentListScreen extends StatelessWidget {
  // TODO: Link with API to fetch real appointments
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Appointments")),
      body: ListView(
        children: [
          Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
            child: ListTile(
              title: Text("Dr. Amit Sharma"),
              subtitle: Text("Tomorrow, 11:30 AM"),
              trailing: Chip(label: Text("Scheduled")),
            ),
          ),
          Card(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 18),
            child: ListTile(
              title: Text("Dr. Priya Gupta"),
              subtitle: Text("Nov 2, 5:00 PM"),
              trailing: Chip(label: Text("Completed")),
            ),
          ),
        ],
      ),
    );
  }
}

