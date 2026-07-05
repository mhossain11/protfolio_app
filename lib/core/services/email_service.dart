import 'dart:convert';

import 'package:http/http.dart' as http;

class EmailService {
  EmailService({http.Client? client}) : _client = client ?? http.Client();
  final http.Client _client;

  static const endpoint = 'https://example.com/api/contact';

  Future<bool> sendMessage({
    required String name,
    required String email,
    required String subject,
    required String message,
  }) async {
    final response = await _client.post(
      Uri.parse(endpoint),
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({
        'name': name,
        'email': email,
        'subject': subject,
        'message': message,
      }),
    );
    return response.statusCode >= 200 && response.statusCode < 300;
  }
}
