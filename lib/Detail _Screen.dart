
import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_screen.dart';
class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        title: Text(
          "Detail Quiz",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Icon(Icons.more_vert),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Quiz Card
            Card(
              color:Color(0xFFFFFFFF),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            
              elevation: 3,
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                          Container(
                                  height: 50,
                                  width:  50,
                               decoration: BoxDecoration(
                              color: Color(0xFFEEF2FF),
                             borderRadius: BorderRadius.circular(12),
                                  ),
                              child: Center(
                              child: Image.asset(
                             "assets/sport.png",
                               height: 40,
                               width:  40,
                             ),
                           ),
                          ),
                        SizedBox(width: 12),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sport",
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "10 Question",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF999999),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow),
                        SizedBox(width: 4),
                        Text(
                          "4.8",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 20),

            // Brief explanation
            Text(
              "Brief explanation about this quiz",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600, 
              ),
            ),
            SizedBox(height: 12),

            // Card 1
            Card(
              color:Color(0xFFFFFFFF),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            
              elevation: 2,
            child : ListTile(
            leading: SizedBox(
                       height: 40,
                       width: 40,
                 child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFFFF5E6),
                   shape: BoxShape.circle,
               ),
                child: Center(
                    child: Image.asset(
                          "assets/assignment.png",
                              height: 24,
                               width: 24,
                         ),
                    ),
                 ),
              ),
                title: Text(
                  "10 Question",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  "10 point for a correct answer",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF999999),
                  ),
                ),
              ),
            ),

            SizedBox(height: 12),

            // Card 2
            Card(
              color:Color(0xFFFFFFFF),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
             
              elevation: 2,
              child: ListTile(
              leading: SizedBox(
                       height: 40,
                       width: 40,
                 child: Container(
                decoration: const BoxDecoration(
                   shape: BoxShape.circle,
               ),
                child: Center(
                    child: Image.asset(
                          "assets/timer.png",
                              height: 40,
                              width: 40,
                         ),
                    ),
                 ),
              ),
                title: Text(
                  "1 hour 20 min",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                subtitle: Text(
                  "Total duration of the quiz",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF999999),
                  ),
                ),
              ),
            ),

            SizedBox(height: 20),
            // Instructions
            Text(
              "Please read the text below carefully so you can understand it",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 12),

            // First point
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "•  ",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF333333),
                  ),
                ),
                Expanded(
                  child: Text(
                    "10 point awarded for a correct answer and no marks for an incorrect answer",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 1.4,
                      color: Color(0xFF666666),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),

            // Second point
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "•  ",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF333333),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Tap on options to select the correct answer",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 1.4,
                      color: Color(0xFF666666),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8),

            // Third point
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "•  ",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF333333),
                  ),
                ),
                Expanded(
                  child: Text(
                    "Click submit if you are sure you want to complete all the quizzes",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 1.4,
                      color: Color(0xFF666666),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 70),

            // Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const QuizQuestionScreen(),
                    ),
                  );
                  
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF21BDCA),
                  padding: EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFFFFFFFF),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
