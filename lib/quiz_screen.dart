import 'package:flutter/material.dart';

class QuizQuestionScreen extends StatefulWidget {
  const QuizQuestionScreen({Key? key}) : super(key: key);

  @override
  State<QuizQuestionScreen> createState() => _QuizQuestionScreenState();
}

class _QuizQuestionScreenState extends State<QuizQuestionScreen> {
  int correctIndex = 0; // football is correct answer

  List<String> options = ["Football", "Basketball", "Volleyball", "Shuttlecock"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      appBar: AppBar(
        leading: IconButton(
          icon:  Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title:  Text("Technology",
            style: TextStyle(fontSize: 16, color: Color(0xFF333333), fontWeight: FontWeight.w600)),
        centerTitle: false,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding:  EdgeInsets.only(right: 16),
            child: SizedBox(
              width: 80, 
              height: 30, 
              child: Image.asset(
                "assests/datetime.png", 
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Progress Bar
            LinearProgressIndicator(
              value: 0.64,
              backgroundColor:  Color(0xFFF2F2F2),
              color:  Color(0xFF21BDCA),
              minHeight: 6,
              borderRadius: BorderRadius.circular(10),
            ),
            SizedBox(height: 8),
             Text("Completed 64%",
                style: TextStyle(color: Color(0xFF999999), fontSize: 14, fontWeight: FontWeight.w400)),

             SizedBox(height: 20),
             Text(
              "The image below is a field image used for?",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
             SizedBox(height: 12),

            // Image Placeholder
            Center(
              child: Container(
                height: 174,
                width: 340,
                decoration: BoxDecoration(
                    color: Color(0xFFC4C4C4),
                    borderRadius: BorderRadius.circular(10)),
              ),
            ),
             SizedBox(height: 20),

            // Options
            ...List.generate(options.length, (index) {
              final isCorrect = index == correctIndex; // Football
              final isWrong = options[index] == "Volleyball"; // Volleyball only

              Color borderColor = Color(0xFFFFFFFF);
              Color? fillColor;

              IconData icon = Icons.circle_outlined;
              Color iconColor = Color(0xFFD4D4D4);

              if (isCorrect) {
                borderColor = Colors.green;
                 icon = Icons.circle_outlined;
                iconColor = Color(0xFFD4D4D4);
              } else if (isWrong) {
                fillColor = Color(0XFFFF6967).withOpacity(0.1);
                icon = Icons.cancel;
                iconColor = Color(0XFFFF6967);
              }

              return Container(
                margin: EdgeInsets.only(bottom: 12),
                padding: EdgeInsets.symmetric(vertical: 14, horizontal: 12),
                decoration: BoxDecoration(
                color: fillColor ?? const Color(0xFFFFFFFF),  
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: borderColor, width: 1.5),

             boxShadow: (options[index] == "Basketball" || options[index] == "Shuttlecock")
             ? [
             BoxShadow(
              color: Colors.black.withOpacity(0.06),
              blurRadius: 6,
              offset: const Offset(0, 3),
             ),
            ]
            : [],
          ),
                child: Row(
                  children: [
                    Icon(icon, color: iconColor),
                     SizedBox(width: 12),
                    Text(
                      options[index],
                      style: TextStyle(fontSize: 14,fontWeight:FontWeight.w500),
                    ),
                  ],
                ),
              );
            }),

             Spacer(),

            // Buttons
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 14),
                      side:  BorderSide(color: Color(0XFF21BDCA)),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    child: Text("Previous",
                        style: TextStyle(
                            color: Color(0XFF21BDCA),
                            fontSize: 14,
                            fontWeight: FontWeight.w600)),
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF21BDCA),
                      padding: EdgeInsets.symmetric(vertical: 14),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    child: Text("Next",
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 14,
                            fontWeight: FontWeight.w600)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
