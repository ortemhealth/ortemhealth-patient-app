import 'package:flutter/material.dart';

class TelemedicineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Video Consult')),
        body: Center(
          child: ElevatedButton.icon(
            icon: Icon(Icons.video_call),
            label: Text("Join Call"),
            onPressed: () {
              // integrate video link logic here
              // open Twilio/Agora/Zoom widget
            },
          ),
        ));
  }
}

