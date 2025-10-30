import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  // TODO: API integration for live profile
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Profile")),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            CircleAvatar(radius: 38, child: Icon(Icons.person, size: 48)),
            SizedBox(height: 14),
            Text("Pravin Jha", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Text("pravin@ortemhealth.com"),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.logout), title: Text("Logout"), onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

