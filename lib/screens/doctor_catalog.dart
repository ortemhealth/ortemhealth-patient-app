import 'package:flutter/material.dart';
import '../widgets/doctor_card.dart';

class DoctorCatalogScreen extends StatelessWidget {
  // TODO: Call DoctorService to fetch doctors
  @override
  Widget build(BuildContext context) {
    final mockDoctors = [
      {"name": "Dr. Amit Sharma", "specialty": "Cardiologist"},
      {"name": "Dr. Priya Gupta", "specialty": "Pediatrician"},
      {"name": "Dr. Sanjay Mehta", "specialty": "Dentist"},
    ];
    return Scaffold(
      appBar: AppBar(title: Text("Find a Doctor")),
      body: ListView(
        children: mockDoctors.map((doc) =>
          DoctorCard(name: doc['name'], specialty: doc['specialty'])
        ).toList(),
      ),
    );
  }
}

