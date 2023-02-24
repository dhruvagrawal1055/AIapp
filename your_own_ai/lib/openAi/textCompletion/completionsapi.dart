import '../apikey.dart';

final Uri completionsEndpoint = Uri.parse('https://api.openai.com/v1/completions');

final Map<String, String> headers = {
  'Content-Type': 'application/json',
  'Authorization': 'Bearer $apiKey',
};