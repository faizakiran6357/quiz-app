
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:quiz_app/model/model.dart';

class QuizService {
  static const _apiUrl =
      'https://mocki.io/v1/fd8b564a-9526-4c0a-8324-d6deed4ccd6c';

  static Future<List<QuizModel>> fetchQuiz() async {
    final response = await http.get(Uri.parse(_apiUrl));
    if (response.statusCode == 200) {
      final decoded = jsonDecode(response.body);

      // Make sure we extract the list from the "quiz" key
      final List data = decoded['quiz'] as List;

      return data.map((e) => QuizModel.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load quiz: ${response.statusCode}');
    }
  }
}
