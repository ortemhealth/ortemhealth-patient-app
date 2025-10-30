import 'package:flutter/material.dart';
import '../services/appointment_service.dart';

class AppointmentBookingScreen extends StatefulWidget {
  @override
  _AppointmentBookingScreenState createState() => _AppointmentBookingScreenState();
}

class _AppointmentBookingScreenState extends State<AppointmentBookingScreen> {
  final _formKey = GlobalKey<FormState>();
  String selectedDoctor, selectedDate, selectedTime, reason;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Book Appointment")),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: EdgeInsets.all(20),
          children: [
            DropdownButtonFormField<String>(
              decoration: InputDecoration(labelText: "Doctor"),
              items: ["Dr. Amit Sharma", "Dr. Priya Gupta"]
                .map((d) => DropdownMenuItem(value: d, child: Text(d)))
                .toList(),
              onChanged: (val) => setState(() => selectedDoctor = val),
              validator: (val) => val == null ? "Select a doctor" : null,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: "Reason"),
              onChanged: (val) => reason = val,
              validator: (val) => val.isEmpty ? "Enter reason" : null,
            ),
            // date/time picker widgets here (not shown for brevity)
            SizedBox(height: 24),
            ElevatedButton(
              child: Text("Confirm Booking"),
              onPressed: () async {
                if (_formKey.currentState.validate()) {
                  // API call goes here:
                  await AppointmentService.bookAppointment(
                    doctor: selectedDoctor,
                    date: selectedDate,
                    time: selectedTime,
                    reason: reason
                  );
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Appointment booked!")));
                  Navigator.pop(context);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

