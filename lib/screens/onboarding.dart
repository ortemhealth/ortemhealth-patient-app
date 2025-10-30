import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnboardingScreen extends StatelessWidget {
  final List<String> texts = [
    "Welcome to OrtemHealth!",
    "Book appointments instantly.",
    "Connect with doctors & join telemedicine.",
    "Smart triage powered by AI.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[900],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("assets/onboard_animation.json", height: 200),
            SizedBox(height: 36),
            Text(
              texts[0],
              style: TextStyle(
                color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 18),
            Text(
              texts[1],
              style: TextStyle(color: Colors.white70, fontSize: 18),
            ),
            SizedBox(height: 48),
            ElevatedButton(
              child: Text("Get Started"),
              style: ElevatedButton.styleFrom(primary: Colors.amber, padding: EdgeInsets.symmetric(horizontal: 44, vertical: 16)),
              onPressed: () => Navigator.pushReplacementNamed(context, '/login'),
            ),
          ],
        ),
      ),
    );
  }
}

