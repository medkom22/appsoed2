import 'dart:convert';

import 'package:appsoed/domain/model/text_jokes/text_jokes.dart';
import 'package:http/http.dart' as http;

class JokesRepository {
  final http.Client client;
  JokesRepository(this.client);

  Future<TextJokes> getJokes() async {
    final response = await client.get(
      Uri.parse('https://candaan-api.vercel.app/api/text/random'),
    );
    if (response.statusCode == 200) {
      return TextJokes.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load jokes');
    }
  }
}
