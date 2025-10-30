import 'package:flutter/material.dart';

class TelemedicineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: Integrate with video API (Twilio/Agora)
    return Scaffold(
      appBar: AppBar(title: Text("Telemedicine Session")),
      body: Center(
        child: ElevatedButton.icon(
          icon: Icon(Icons.video_call),
          label: Text("Join Video Call"),
          onPressed: () {},
        ),
      ),
    );
  }
}
