import 'package:flutter/material.dart';
import 'screens/onboarding.dart';

void main() => runApp(OrtemHealthApp());

class OrtemHealthApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        accentColor: Colors.greenAccent,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        brightness: Brightness.light,
        fontFamily: 'Montserrat',
        appBarTheme: AppBarTheme(
          elevation: 2,
        ),
      ),
      darkTheme: ThemeData.dark(),
      initialRoute: '/onboarding',
      routes: {
        '/onboarding': (context) => OnboardingScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/dashboard': (context) => DashboardScreen(),
        '/appointment_booking': (context) => AppointmentBookingScreen(),
        '/appointment_list': (context) => AppointmentListScreen(),
        '/notifications': (context) => NotificationsScreen(),
        '/doctor_catalog': (context) => DoctorCatalogScreen(),
        '/health_records': (context) => HealthRecordsScreen(),
        '/chatbot_triage': (context) => ChatbotTriageScreen(),
        '/telemedicine': (context) => TelemedicineScreen(),
        '/profile': (context) => ProfileScreen(),
      },
    );
  }
}
