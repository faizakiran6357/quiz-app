

import 'package:flutter/material.dart';
import 'model.dart';

class QuizScreen extends StatefulWidget {
  final List<QuizModel> quizList;
  final int startIndex;

  const QuizScreen({
    super.key,
    required this.quizList,
    required this.startIndex,
  });

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late int currentIndex;
  String? selectedAnswer; // ✅ user ka selected answer

  @override
  void initState() {
    super.initState();
    currentIndex = widget.startIndex;
  }

  @override
  Widget build(BuildContext context) {
    final quiz = widget.quizList[currentIndex];

    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF), // white background
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 🔹 Top Row
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
                    onPressed: () => Navigator.pop(context),
                  ),
                  const SizedBox(width: 8),
                  const Text(
                    "Technology",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF333333),
                    ),
                  ),
                  const Spacer(),
                  Image.asset(
                    "assets/datetime.png",
                    height: 20,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // 🔹 Progress Bar
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: LinearProgressIndicator(
                  value: (currentIndex + 1) / widget.quizList.length,
                  minHeight: 6,
                  color: const Color(0xFF21BDCA),
                  backgroundColor: const Color(0xffF2F2F2),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                "Completed ${(((currentIndex + 1) / widget.quizList.length) * 100).toStringAsFixed(0)}%",
                style: const TextStyle(
                  color: Color(0xFF999999),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const SizedBox(height: 24),

              // 🔹 Question
              Text(
                quiz.question,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 16),

              // 🔹 Options (Selectable)
              Column(
                children: quiz.choices.map((choice) {
                  Color borderColor = Colors.grey.shade300;
                  Color tileColor = Colors.white;
                  Icon? leadingIcon = const Icon(Icons.radio_button_unchecked, color: Colors.grey);

                  // agar user ne select kia hai
                  if (selectedAnswer != null) {
                    if (choice == quiz.correctAnswer) {
                      // sahi jawab green
                      borderColor = Colors.green;
                      tileColor = Colors.green.shade50;
                      leadingIcon = const Icon(Icons.check_circle, color: Colors.green);
                    } else if (choice == selectedAnswer) {
                      // ghalat jawab red
                      borderColor = Colors.red;
                      tileColor = Colors.red.shade50;
                      leadingIcon = const Icon(Icons.cancel, color: Colors.red);
                    }
                  }

                  return GestureDetector(
                    onTap: selectedAnswer == null
                        ? () {
                            setState(() {
                              selectedAnswer = choice;
                            });
                          }
                        : null, // ✅ ek bar select hone ke baad disable
                    child: optionTile(
                      text: choice,
                      borderColor: borderColor,
                      tileColor: tileColor,
                      leadingIcon: leadingIcon,
                    ),
                  );
                }).toList(),
              ),

              const Spacer(),

              // 🔹 Buttons
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        side: const BorderSide(color: Colors.teal),
                      ),
                      onPressed: currentIndex > 0
                          ? () {
                              setState(() {
                                currentIndex--;
                                selectedAnswer = null; // ✅ reset answer
                              });
                            }
                          : null,
                      child: const Text(
                        "Previous",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF21BDCA),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF21BDCA),
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: currentIndex < widget.quizList.length - 1
                          ? () {
                              setState(() {
                                currentIndex++;
                                selectedAnswer = null; // ✅ reset answer
                              });
                            }
                          : null,
                      child: const Text(
                        "Next",
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  // 🔹 Option Tile Widget
  Widget optionTile({
    required String text,
    required Color borderColor,
    required Color tileColor,
    required Icon? leadingIcon,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: tileColor,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: borderColor,
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 1,
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: ListTile(
        leading: leadingIcon,
        title: Text(text),
      ),
    );
  }
}

