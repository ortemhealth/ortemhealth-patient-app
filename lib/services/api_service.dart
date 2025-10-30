import 'package:http/http.dart' as http;
import 'dart:convert';

class ApiService {
  static String baseUrl = "https://api.ortemhealth.com";

  static Future<dynamic> getAppointments(String token) async {
    final response = await http.get(
        Uri.parse("$baseUrl/appointments"),
        headers: {"Authorization": "Bearer $token"});
    return jsonDecode(response.body);
  }
  // Add similar for POST/PUT (booking, triage, payment, etc.)
}

