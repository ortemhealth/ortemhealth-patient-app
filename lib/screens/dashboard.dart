import 'package:flutter/material.dart';
import '../widgets/appointment_card.dart';
import '../widgets/notification_badge.dart';
import '../services/api_service.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome, Pravin'),
        actions: [NotificationBadge()],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(child: AppointmentCard()),
            SizedBox(height: 18),
            ElevatedButton(
              child: Text('Book New Appointment'),
              onPressed: () => Navigator.pushNamed(context, '/appointment_booking'),
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                padding: EdgeInsets.symmetric(vertical: 18, horizontal: 28),
                textStyle: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(height: 24),
            ElevatedButton.icon(
              icon: Icon(Icons.chat_bubble),
              label: Text('Symptom Triage Bot'),
              onPressed: () => Navigator.pushNamed(context, '/chatbot_triage'),
              style: ElevatedButton.styleFrom(primary: Colors.green),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text('My Profile')),
            ListTile(
              title: Text('Health Records'),
              onTap: () => Navigator.pushNamed(context, '/health_records'),
            ),
            ListTile(
              title: Text('Doctors'),
              onTap: () => Navigator.pushNamed(context, '/doctor_catalog'),
            ),
            ListTile(
              title: Text('Telemedicine'),
              onTap: () => Navigator.pushNamed(context, '/telemedicine'),
            ),
            ListTile(
              title: Text('Settings'),
              onTap: () => Navigator.pushNamed(context, '/profile'),
            ),
          ],
        ),
      ),
    );
  }
}

