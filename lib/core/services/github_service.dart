import 'dart:convert';

import 'package:http/http.dart' as http;

class GithubService {
  GithubService({http.Client? client}) : _client = client ?? http.Client();
  final http.Client _client;

  Future<int?> fetchPublicRepoCount(String username) async {
    final response = await _client.get(
      Uri.parse('https://api.github.com/users/$username'),
    );
    if (response.statusCode != 200) return null;
    return jsonDecode(response.body)['public_repos'] as int?;
  }
}
