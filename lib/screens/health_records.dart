import 'package:flutter/material.dart';

class HealthRecordsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: API hookup for real records
    return Scaffold(
      appBar: AppBar(title: Text("Health Records")),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.folder_shared),
            title: Text("Blood Test | Oct 2025"),
            subtitle: Text("Normal | PDF attached"),
            trailing: Icon(Icons.file_download),
            onTap: () {
              // Download or preview
            },
          ),
          ListTile(
            leading: Icon(Icons.folder_shared),
            title: Text("ECG | August 2025"),
            subtitle: Text("Mild Arrythmia | PDF attached"),
            trailing: Icon(Icons.file_download),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

