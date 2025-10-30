import 'package:flutter/material.dart';

class ChatbotTriageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: Integrate with AI/ML triage API
    return Scaffold(
      appBar: AppBar(title: Text("Symptom Triage Bot")),
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            Text("Describe your symptoms:", style: TextStyle(fontSize: 20)),
            SizedBox(height: 12),
            TextField(
              decoration: InputDecoration(hintText: "E.g. fever, cough, headache"),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text("Analyze"),
              onPressed: () {
                // Call `/triage-symptoms` API and show result dialog
              },
            )
          ],
        ),
      ),
    );
  }
}

