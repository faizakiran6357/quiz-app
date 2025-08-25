class QuizQuestion {
  final String question;
  final List<String> options;       
  final String correctAnswer;       

  QuizQuestion({
    required this.question,
    required this.options,
    required this.correctAnswer,
  });

  factory QuizQuestion.fromJson(Map<String, dynamic> json) {
    return QuizQuestion(
      question: json['question'] as String,
      options: List<String>.from(json['choices'] ?? const []),         
      correctAnswer: json['correct_answer'] as String,                  
    );
  }
}
