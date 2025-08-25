
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
      question: json['question'],
      choices: List<String>.from(json['choices']),
      correctAnswer: json['correct_answer'],
    );
  }
}
