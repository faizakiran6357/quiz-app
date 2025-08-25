import 'package:flutter/material.dart';
import 'service/quiz_services.dart';
import 'model/model.dart';

class QuizQuestionScreen extends StatefulWidget {
  const QuizQuestionScreen({Key? key, required List<QuizModel> quizList, required int startIndex}) : super(key: key);

  @override
  State<QuizQuestionScreen> createState() => _QuizQuestionScreenState();
}

class _QuizQuestionScreenState extends State<QuizQuestionScreen> {
  late Future<List<QuizModel>> futureQuestions;
  int currentIndex = 0;
  String? selectedAnswer;

  @override
  void initState() {
    super.initState();
    futureQuestions = QuizService.fetchQuiz();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "Technology",
          style: TextStyle(
              fontSize: 16,
              color: Color(0xFF333333),
              fontWeight: FontWeight.w600),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: FutureBuilder<List<QuizModel>>(
        future: futureQuestions, // ✅ Match model
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text("Error: ${snapshot.error}"));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text("No questions found"));
          }

          final questions = snapshot.data!;
          final question = questions[currentIndex];

          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Progress bar
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: LinearProgressIndicator(
                    value: (currentIndex + 1) / questions.length,
                    backgroundColor: const Color(0xFFF2F2F2),
                    color: const Color(0xFF21BDCA),
                    minHeight: 6,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  "Completed ${(((currentIndex + 1) / questions.length) * 100).toStringAsFixed(0)}%",
                  style: const TextStyle(
                      color: Color(0xFF999999),
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 20),

                // Question text
                Text(
                  question.question,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 12),

                // Options
                ...question.choices.map((option) {
                  final isCorrect = option == question.correctAnswer;
                  final isSelected = option == selectedAnswer;

                  Color borderColor = Colors.transparent;
                  Color? fillColor;
                  IconData icon = Icons.circle_outlined;
                  Color iconColor = const Color(0xFFD4D4D4);

                  if (isSelected) {
                    if (isCorrect) {
                      borderColor = Colors.green;
                      icon = Icons.check_circle;
                      iconColor = Colors.green;
                    } else {
                      fillColor = const Color(0XFFFF6967).withOpacity(0.1);
                      icon = Icons.cancel;
                      iconColor = const Color(0XFFFF6967);
                    }
                  }

                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedAnswer = option;
                      });
                    },
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      padding: const EdgeInsets.symmetric(
                          vertical: 14, horizontal: 12),
                      decoration: BoxDecoration(
                        color: fillColor ?? Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: borderColor, width: 1.5),
                        boxShadow: !isSelected
                            ? [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.06),
                                  blurRadius: 6,
                                  offset: const Offset(0, 3),
                                )
                              ]
                            : [],
                      ),
                      child: Row(
                        children: [
                          Icon(icon, color: iconColor),
                          const SizedBox(width: 12),
                          Text(option,
                              style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  );
                }).toList(),

                const Spacer(),

                // Prev / Next
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        onPressed: currentIndex > 0
                            ? () {
                                setState(() {
                                  currentIndex--;
                                  selectedAnswer = null;
                                });
                              }
                            : null,
                        child: const Text("Previous"),
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: currentIndex < questions.length - 1
                            ? () {
                                setState(() {
                                  currentIndex++;
                                  selectedAnswer = null;
                                });
                              }
                            : null,
                        child: const Text("Next"),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}



