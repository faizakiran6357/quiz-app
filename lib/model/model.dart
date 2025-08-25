// // model.dart
// class QuizModel {
//   final String question;
//   final List<String> choices;
//   final String correctAnswer;

//   QuizModel({
//     required this.question,
//     required this.choices,
//     required this.correctAnswer,
//   });

//   factory QuizModel.fromJson(Map<String, dynamic> json) {
//     return QuizModel(
//       question: json['question'] as String,
//       choices: List<String>.from(json['choices'] as List<dynamic>),
//       correctAnswer: json['correctAnswer'] as String,
//     );
//   }
// }
class QuizModel {
  final String question;
  final List<String> choices;
  final String correctAnswer;

  QuizModel({
    required this.question,
    required this.choices,
    required this.correctAnswer,
  });

  factory QuizModel.fromJson(Map<String, dynamic> json) {
    return QuizModel(
      question: (json['question'] ?? '') as String, // agar null ho toh empty string
      choices: (json['choices'] as List<dynamic>? ?? [])
          .map((e) => e.toString())
          .toList(),
      correctAnswer: (json['correctAnswer'] ?? '') as String, // null ko handle
    );
  }
}

