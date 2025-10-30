import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String name, specialty;
  DoctorCard({this.name, this.specialty});
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(12),
      child: ListTile(
        leading: CircleAvatar(child: Icon(Icons.person)),
        title: Text(name),
        subtitle: Text(specialty),
        trailing: Icon(Icons.chevron_right),
        onTap: () => Navigator.pushNamed(context, '/appointment_booking'),
      ),
    );
  }
}

