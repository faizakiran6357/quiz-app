import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/quiz_model.dart';

class ApiService {
  static const String _apiUrl =
      'https://mocki.io/v1/fd8b564a-9526-4c0a-8324-d6deed4ccd6c';

  Future<List<QuizQuestion>> fetchQuizQuestions() async {
    final res = await http.get(Uri.parse(_apiUrl));

    if (res.statusCode == 200) {
      final decoded = jsonDecode(res.body);

      // The API returns: { "quiz": [ ... ] }
      final List<dynamic> list = (decoded['quiz'] as List<dynamic>? ) ?? [];

      return list
          .map((e) => QuizQuestion.fromJson(e as Map<String, dynamic>))
          .toList();
    } else {
      throw Exception('Failed to load quiz: ${res.statusCode}');
    }
  }
}
